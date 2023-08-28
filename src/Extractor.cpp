#include <utils/Logger.h>
#include <Extractor.h>

#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"

#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/ErrorHandling.h"

#include "llvm/IRReader/IRReader.h"

#include <fmt/core.h>
#include <nlohmann/json.hpp>

using json = nlohmann::json;
using namespace std;

std::string getLanguage(const std::string& filename) {
    std::string extension = filename.substr(filename.find_last_of('.') + 1);

    if (extension == "c") {
        return "C";
    } else if (extension == "cpp" || extension == "cxx" || extension == "cc") {
        return "C++";
    } else if (extension == "java") {
        return "Java";
    } else if (extension == "go") {
        return "Go";
    } else if (extension == "rs") {
        return "Rust";
    } else {
        return "Unknown";
    }
}

void extractSourceInfo(const string source, const string llvmir_file)
{

    llvm::LLVMContext context;
    llvm::SMDiagnostic error;
    auto module = llvm::parseIRFile(llvmir_file, error, context);

    if (!module) {
        Logger::error("Error reading", llvmir_file);
    }

    // Set up outer JSON
    json outer;
    outer["language"] = getLanguage(source);

    // Initialize fragments
    outer["fragments"] = json::array();

    for (const auto &F : *module)
    {
        for (const auto &I : instructions(F)) {
            const llvm::DILocation *Loc = I.getDebugLoc();
            llvm::outs() << "IR: " << I << "\n";
            if (Loc) {
                llvm::outs() << "Source File: " << Loc->getFilename().str() << "\n";
                llvm::outs() << "Source Line: " << Loc->getLine() << "\n";
                llvm::outs() << "Source Column: " << Loc->getColumn() << "\n";
            }
            llvm::outs() << "---------------------------------------------\n";
        }
    }
}
