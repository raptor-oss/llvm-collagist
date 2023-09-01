# Install script for directory: /Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-src/llvm/unittests

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/ADT/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Analysis/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/AsmParser/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/BinaryFormat/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Bitcode/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Bitstream/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/CodeGen/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/DebugInfo/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Demangle/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/ExecutionEngine/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/FileCheck/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Frontend/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/FuzzMutate/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/InterfaceStub/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/IR/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/LineEditor/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Linker/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/MC/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/MI/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/MIR/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Object/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/ObjectYAML/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Option/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Remarks/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Passes/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/ProfileData/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Support/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/TableGen/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Target/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/TextAPI/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/Transforms/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/XRay/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/unittests/tools/cmake_install.cmake")

endif()

