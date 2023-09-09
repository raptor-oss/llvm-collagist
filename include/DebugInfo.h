#ifndef DEBUG_INFO_H
#define DEBUG_INFO_H

#endif //DEBUG_INFO_H

#pragma once

#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/ErrorHandling.h"

llvm::MDNode *stripDebugLocFromLoopID(llvm::MDNode*);
void stripDebugInfoFromBB(llvm::BasicBlock &);
