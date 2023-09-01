#include <cctype>
#include <string>
#include <fstream>
#include <algorithm>
#include <filesystem>
#include <Extractor.h>
#include <utils/Logger.h>

#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/ErrorHandling.h"


#include <fmt/core.h>
#include <nlohmann/json.hpp>

using json = nlohmann::json;
using namespace std;

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
    string sourceFileName = filesystem::path(source).filename().string();
    std::ifstream irFile(llvmir_file);
    auto bufferOrError = llvm::MemoryBuffer::getFile(llvmir_file);
    if (!bufferOrError) {
        Logger::error("IR file is no good :-(");
        exit(1);
    }
    auto module = llvm::parseIR(bufferOrError->get()->getMemBufferRef(), error, context);

    json fragments = json::array();

    switch (mode) {
        case 0:
            // ----[ Loop over every basic block and slice the program accordingly ]----
        Logger::warn("Granularity level is set to Basic Block.");
        for (const auto &F : *module)
        {
            for (const auto &BB : F)
            {
                // Get starting and ending locations of the instructions in the basic block
                const auto startInstrLocation = BB.begin();
                const auto postLastInstrSentinelLocation = BB.end();

                const auto endInstrLocation = BB.rbegin();
                const auto preFirstInstrSentinelLocation = BB.rend();

                // Ensure the basic blocks are non-empty
                if ((startInstrLocation == postLastInstrSentinelLocation) || (endInstrLocation == preFirstInstrSentinelLocation))
                    continue;

                if (startInstrLocation->getDebugLoc())
                {
                    json j;
                    int startLine = startInstrLocation->getDebugLoc()->getLine();
                    int endLine = endInstrLocation->getDebugLoc()->getLine();
                    std::string code_fragment = sliceFile(source, startLine, endLine);
                    std::string BBName = BB.getName().str();
                    std::string ir = "";
                    // Iterate over every instruction in the basic block and get the IR
                    llvm::raw_string_ostream rso(ir);
                    for (const auto &instr : BB)
                    {
                        instr.print(rso);
                        rso << "\n";
                    }

                    j[BBName] = {code_fragment, trim(ir)};
                    fragments.push_back(j);
                }
            }
            }
            break;
        case 1:
            // ----[ Loop over every instruction in the function ]----
            Logger::warn("Granularity level is set to Instruction.");
            for (const auto &F : *module)
            {
                for (const auto &I : instructions(F)) {
                    const llvm::DILocation *Loc = I.getDebugLoc();
                    if (Loc && filesystem::path(Loc->getFilename().str()).filename().string() == sourceFileName) {
                        std::string IR;
                        llvm::raw_string_ostream rso(IR);
                        I.print(rso);
                        std::string sourceLine = getSingleLine(source, Loc->getLine());
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
        std::filesystem::path sourcePath(source);
        std::string filename = sourcePath.stem().string();

        std::filesystem::path outputPath(outdir);
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
