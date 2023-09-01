# Install script for directory: /Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-src/llvm/lib

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
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/IR/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/FuzzMutate/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/FileCheck/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/InterfaceStub/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/IRReader/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/CodeGen/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/BinaryFormat/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Bitcode/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Bitstream/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/DWARFLinker/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Extensions/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Frontend/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Transforms/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Linker/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Analysis/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/LTO/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/MC/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/MCA/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Object/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/ObjectYAML/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Option/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Remarks/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/DebugInfo/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/DWP/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/ExecutionEngine/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Target/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/AsmParser/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/LineEditor/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/ProfileData/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Passes/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/TextAPI/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/ToolDrivers/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/XRay/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/Testing/cmake_install.cmake")
  include("/Users/rkrsn/workspace/raptor-oss/llvm-slicer/cmake-build-debug/_deps/llvm-build/lib/WindowsManifest/cmake_install.cmake")

endif()

