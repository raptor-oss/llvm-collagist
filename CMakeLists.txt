cmake_minimum_required(VERSION 3.11) # 3.11 or higher for FetchContent

# Set the policy
cmake_policy(SET CMP0127 OLD)
set(CMAKE_WARN_DEPRECATED OFF)

project(collagist)

list(APPEND CMAKE_PREFIX_PATH "/opt/homebrew/opt/llvm@13/")

set(CMAKE_CXX_STANDARD 17)

# Add FetchContent
include(FetchContent)

# Fetch CLI11
FetchContent_Declare(
        CLI11
        GIT_REPOSITORY https://github.com/CLIUtils/CLI11.git
        GIT_TAG        v2.3.2
)

FetchContent_MakeAvailable(CLI11)

find_package(LLVM REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Add CLI11 include directory
include_directories(${cli11_SOURCE_DIR}/include)

add_executable(LLVMSourceExtractor src/main.cpp src/Extractor.cpp)
target_include_directories(LLVMSourceExtractor PRIVATE include)
llvm_map_components_to_libnames(llvm_libs support core irreader)
target_link_libraries(LLVMSourceExtractor ${llvm_libs})
