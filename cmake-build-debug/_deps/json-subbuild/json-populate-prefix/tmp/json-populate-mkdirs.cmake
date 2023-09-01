# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-src"
  "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-build"
  "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-subbuild/json-populate-prefix"
  "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-subbuild/json-populate-prefix/tmp"
  "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-subbuild/json-populate-prefix/src/json-populate-stamp"
  "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-subbuild/json-populate-prefix/src"
  "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-subbuild/json-populate-prefix/src/json-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-subbuild/json-populate-prefix/src/json-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/json-subbuild/json-populate-prefix/src/json-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
