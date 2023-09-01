cmake_minimum_required(VERSION 3.11) 

# Set the policy
cmake_policy(SET CMP0127 OLD)

set(CMAKE_WARN_DEPRECATED OFF)

if(POLICY CMP0135)
	cmake_policy(SET CMP0135 NEW)
	set(CMAKE_POLICY_DEFAULT_CMP0135 NEW)
endif()

project(llvmslicer)

set(LLVM_DIR_PATH "" CACHE STRING "Path to LLVM installation")
list(APPEND CMAKE_PREFIX_PATH ${LLVM_DIR_PATH})


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "-lstdc++fs -std=c++17")

find_package(LLVM REQUIRED CONFIG)

# Add FetchContent
include(FetchContent)

# --[ CLI11 for CLI tools ]--
FetchContent_Declare(
        CLI11
        GIT_REPOSITORY https://github.com/CLIUtils/CLI11.git
        GIT_TAG        v2.3.2
)

FetchContent_MakeAvailable(CLI11)

# --[ Read and save JSON ]--

FetchContent_Declare(
        json 
        URL https://github.com/nlohmann/json/releases/download/v3.11.2/json.tar.xz
)

FetchContent_MakeAvailable(json)

# --[ Formatting library ]--
FetchContent_Declare(fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  GIT_TAG master
)
FetchContent_MakeAvailable(fmt)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Add CLI11 include directory
include_directories(${cli11_SOURCE_DIR}/include)

add_executable(llvmslicer src/main.cpp src/Extractor.cpp src/utils/Logger.cpp)
target_include_directories(llvmslicer PRIVATE include)
llvm_map_components_to_libnames(llvm_libs support core irreader)
target_link_libraries(llvmslicer PRIVATE
        fmt::fmt
        ${llvm_libs}
        ${Boost_INCLUDE_DIRS}
        nlohmann_json::nlohmann_json
	stdc++fs
)
target_link_libraries(llvmslicer)
# Install
set(CMAKE_INSTALL_PREFIX "/usr/local/" CACHE STRING "Path to llvmslicer installation")
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_INSTALL_PREFIX})
install(TARGETS llvmslicer DESTINATION bin)