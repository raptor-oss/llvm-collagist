# This file allows users to call find_package(LLD) and pick up our targets.



find_package(LLVM REQUIRED CONFIG
             HINTS "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/cmake/llvm")

set(LLD_EXPORTED_TARGETS "lldCommon;lldCore;lldDriver;lldMachO;lldYAML;lldReaderWriter;lld;lldCOFF;lldELF;lldMachO2;lldMinGW;lldWasm")
set(LLD_CMAKE_DIR "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/lib/cmake/lld")
set(LLD_INCLUDE_DIRS "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-src/lld/include;/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/tools/lld/include")

# Provide all our library targets to users.
include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/lib/cmake/lld/LLDTargets.cmake")
