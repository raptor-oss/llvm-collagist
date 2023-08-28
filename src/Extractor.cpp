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

#include <nlohmann/json.hpp>

using json = nlohmann::json;

void extractSourceInfo(const std::string llFile) {

    llvm::LLVMContext context;
    llvm::SMDiagnostic error;
    auto module = llvm::parseIRFile(llFile, error, context);

    if (!module) {
        Logger::error("Error reading .ll file");
    }

    for (const auto &F : *module) {
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
