#include "Extractor.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/raw_ostream.h"

void extractSourceInfo(const llvm::Module &M) {
    for (const auto &F : M) {
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