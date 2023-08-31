#ifndef LLVM_SOURCE_EXTRACTOR_EXTRACTOR_H
#define LLVM_SOURCE_EXTRACTOR_EXTRACTOR_H

#endif //LLVM_SOURCE_EXTRACTOR_EXTRACTOR_H

#pragma once

#include "llvm/IR/Module.h"

std::string getSingleLine(const std::string &filepath, const int lineNo);
std::string sliceFile(const std::string& filepath, const int startLine, const int endLine);
void extractSourceInfo(const std::string source, const std::string llvmir_file, const int mode);