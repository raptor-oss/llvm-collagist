#include <cctype>
#include <string>
#include <fstream>
#include <algorithm>

#ifndef __has_include
  static_assert(false, "__has_include not supported");
#else
#  if __cplusplus >= 201703L && __has_include(<filesystem>)
#    include <filesystem>
     namespace fs = std::filesystem;
#  elif __has_include(<experimental/filesystem>)
#    include <experimental/filesystem>
     namespace fs = std::experimental::filesystem;
#  elif __has_include(<boost/filesystem.hpp>)
#    include <boost/filesystem.hpp>
     namespace fs = boost::filesystem;
#  endif
#endif

#include <Extractor.h>
#include <DebugInfo.h>
#include <utils/Logger.h>

#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/ErrorHandling.h"


#include <fmt/core.h>
#include <nlohmann/json.hpp>

using json = nlohmann::json;
using namespace llvm;

std::string trim(std::string str) {
    // Trim whitespaces from start
    auto ltrim = std::find_if(str.begin(), str.end(), [](unsigned char ch) { return !std::isspace(ch); });
    str.erase(str.begin(), ltrim);

    // Trim from end
    auto rtrim = std::find_if(str.rbegin(), str.rend(), [](unsigned char ch) { return !std::isspace(ch); });
    str.erase(rtrim.base(), str.end());

    return str;
}

std::string getSingleLine(const std::string& filepath, const int lineNo) {
    std::ifstream file(filepath);
    std::string line, result;

    if (!file.is_open()) {
        Logger::error("Failed to open file:", filepath);
        exit(1);
    }

    int currentLine = 0;
    while (std::getline(file, line)) {
        currentLine++;
        if (currentLine == lineNo) {
            result = line;
        }
    }

    file.close();
    return result;
}

std::string sliceFile(const std::string& filepath, const int startLine, const int endLine) {
    std::ifstream file(filepath);
    std::string line, result;

    if (!file.is_open()) {
        Logger::error("Failed to open file:", filepath);
        exit(1);
    }

    int currentLine = 0;
    while (std::getline(file, line)) {
        currentLine++;
        if (currentLine >= startLine && currentLine <= endLine) {
            result += line + "\n";
        }
        if (currentLine > endLine) {
            break;
        }
    }

    file.close();
    return result;
}


void extractSourceInfo(const std::string& source, const std::string& llvmir_file, const int mode, const std::string& outdir) {
    llvm::LLVMContext context;
    llvm::SMDiagnostic error;
    string sourceFileName = fs::path(source).filename().string();

    std::unique_ptr<llvm::Module> module_ptr = llvm::parseIRFile(llvmir_file, error, context);

    // if (error.getKind() == llvm::SourceMgr::DiagKind::DK_Error) {
    //     std::cout << "Line number " << error.getLineNo() << std::endl;
    //     std::cout << "Column number " << error.getColumnNo() << std::endl;
    //     std::cout << error.getLineContents().data() << std::endl;
    //     std::cout << "Error: " << error.getMessage().data() << std::endl;
    // }

    json fragments = json::array();

    switch (mode) {
        case 0:
            // ----[ Loop over every basic block and slice the program accordingly ]----
            Logger::warn("Granularity level is set to Basic Block.");
            for (auto &F : *module_ptr)
            {
                for (auto &BB : F)
                {
                    // Get starting and ending locations of the instructions in the basic block
                    const auto startInstrLocation = BB.begin();
                    const auto postLastInstrSentinelLocation = BB.end();

                    const auto endInstrLocation = BB.rbegin();
                    const auto preFirstInstrSentinelLocation = BB.rend();

                    int startLine = -1, endLine = -1;

                    // Get the first instruction that has debug info
                    for (auto instr = startInstrLocation; instr != postLastInstrSentinelLocation; instr++) {
                        if(instr->getDebugLoc()) {
                            startLine = instr->getDebugLoc()->getLine();
                            break;
                        }
                    }
                    // And the last instruction that has debug info
                    for (auto instr = endInstrLocation; instr != preFirstInstrSentinelLocation; instr++) {
                        if(instr->getDebugLoc()) {
                            endLine = instr->getDebugLoc()->getLine();
                            break;
                        }
                    }
                    if ((startLine == -1) || (endLine == -1))
                        continue;

                    // // Ensure the basic blocks are non-empty
                    // if ((startInstrLocation == postLastInstrSentinelLocation) || (endInstrLocation == preFirstInstrSentinelLocation))
                    //     continue;
                    // if ( ! (startInstrLocation->getDebugLoc()) )
                    //     continue;

                    // int startLine = startInstrLocation->getDebugLoc()->getLine();
                    // int endLine = endInstrLocation->getDebugLoc()->getLine();

                    // std::cout << "Start: " << startLine << std::endl;
                    // std::cout << "End: " << endLine << std::endl;

                    std::string code_fragment = sliceFile(source, startLine, endLine);
                    if(code_fragment.length() == 0)
                        continue;

                    std::string ir = "";
                    // Iterate over every instruction in the basic block and get the IR
                    llvm::raw_string_ostream rso(ir);
                    stripDebugInfoFromBB(BB);
                    for (const auto &instr : BB)
                    {
                        instr.print(rso);
                        rso << "\n";
                    }
                    fragments.push_back({code_fragment, trim(ir)});
                }
            }
            break;
        case 1:
            // ----[ Loop over every instruction in the function ]----
            Logger::warn("Granularity level is set to Instruction.");

            for (auto &F : *module_ptr)
            {
                DenseMap<MDNode *, MDNode *> LoopIDsMap;

                for (auto &I : llvm::make_early_inc_range(instructions(F))) {

                    // Ignore statements that are purely for debugging
                    if (llvm::isa<llvm::DbgInfoIntrinsic>(&I)) {
                        continue;
                    }

                    const llvm::DILocation *Loc = I.getDebugLoc();
                    if (Loc && fs::path(Loc->getFilename().str()).filename().string() == sourceFileName) {
                        int line_num = Loc->getLine();

                        // Strip debug info
                        if (I.getDebugLoc()) {
                            I.setDebugLoc(llvm::DebugLoc());
                        }
                        if (auto *LoopID = I.getMetadata(LLVMContext::MD_loop)) {
                            auto *NewLoopID = LoopIDsMap.lookup(LoopID);
                            if (!NewLoopID)
                                NewLoopID = LoopIDsMap[LoopID] = stripDebugLocFromLoopID(LoopID);
                            if (NewLoopID != LoopID)
                                I.setMetadata(LLVMContext::MD_loop, NewLoopID);
                        }
                        // Strip other attachments that are or use debug info.
                        if (I.hasMetadataOtherThanDebugLoc()) {
                            // Heapallocsites point into the DIType system.
                            I.setMetadata("heapallocsite", nullptr);
                            // DIAssignID are debug info metadata primitives.
                            I.setMetadata(llvm::LLVMContext::MD_DIAssignID, nullptr);
                        }

                        std::string IR;
                        llvm::raw_string_ostream rso(IR);
                        I.print(rso);
                        std::string sourceLine = getSingleLine(source, line_num);
                        fragments.push_back({trim(sourceLine), trim(IR)});
                    }
                }
            }
            break;
        default:
            Logger::error("Not implemented, this granularity level has not been implemented.");
            exit(1);
    }
    std::string prettyJsonString = fragments.dump(4);

    // Print on console
    if (outdir.empty()) {
        std::cout << prettyJsonString << std::endl;
    }
    // Save to file
    else {
    // Extract filename without extension
        fs::path sourcePath(source);
        std::string filename = sourcePath.stem().string();

        fs::path outputPath(outdir);
        outputPath /= filename + ".json";

        std::ofstream file(outputPath);
        if (file.is_open()) {
            file << prettyJsonString;
            file.close();
            Logger::info(fmt::format("Save output to {}", outputPath.string()));
        } else {
            std::cerr << "Failed to open " << outputPath << " for writing." << std::endl;
        }
    }
}
