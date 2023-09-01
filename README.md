# LLVM IR Slicer and Source Extractor

```text
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⠉⠉⠙⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡄⠀⠀⢠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢀⣤⡶⠶⢶⣤⣄⣀⠘⠛⠶⣴⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣾⡇⠀⠀⠀⠈⠙⢿⣿⣷⣶⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠘⢷⣄⡀⠀⠀⢀⣸⡟⠉⠙⠻⣿⣿⣿⣷⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠉⠛⠛⠛⠛⠉⠀⠀⢸⣦⣄⡉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣆⠀⠀⠙⠻⢿⣿⣿⣿⣿⣷⣄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣦⠀⠀⠀⠀⠈⠙⠻⢿⣿⣿⣷⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣷⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠓⠀⠀⠀⠀⠀⠀⠀⠀
```

This project aims to extract specific functions from an LLVM Intermediate Representation (IR) file. It's built using C++ and leverages the C++ LLVM API parsing `*.ll` files and extracting the slices of code corresponding to the LLVM IR files.

## Prerequisites

- CMake 3.10 or higher
- LLVM 13
- A C++17-compatible compiler (e.g., GCC, Clang)

## Building the Project

First, clone the repository and navigate into the project's root directory.

```bash
git clone https://github.com/raptor-oss/llvm-source-extractor.git
cd llvm-source-extractor/
```

Create a build directory and navigate into it.

```bash
mkdir build
cd build
```

Run CMake to generate the build files and build the project.

```bash
cmake -DLLVM_DIR_PATH="/path/to/your/llvm" -DCMAKE_INSTALL_PREFIX=/path/to/your/installation/directory ..
# Since I used homebrew my path was "/opt/homebrew/opt/llvm@13/"
# So, it would be 
make
sudo make install 
# If you can't use sudo, then you can configure cmake as follows:
cmake -DLLVM_DIR_PATH="/path/to/your/llvm" -DCMAKE_INSTALL_PREFIX="/path/to/your/installation/directory" ..
# Be sure to add this installation directory to path.
```

After successful build, you should see an executable named `LLVMSourceExtractor` inside the `build/` directory.

## Running the Project

For usage instructions, from the `build/` directory, execute:

```bash
❯ ./LLVMSlicer --help
LLVM IR Slicer and Source Extractor
Usage: ./LLVMSourceExtractor [OPTIONS]

Options:
  -h,--help                   Print this help message and exit
  --input TEXT REQUIRED       The Path to LLVM IR file (*.ll)
```

To run a sample program (run the following from within the build directory):

```bash
./LLVMSlicer --input=../test/test_data/test_rust.ll

---------------------------------------------
IR:   call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12), !dbg !27
Source File: sample.rs
Source Line: 12
Source Column: 9
---------------------------------------------
IR:   %_45 = load i32, i32* %n, align 4, !dbg !28
Source File: sample.rs
Source Line: 13
Source Column: 12
---------------------------------------------
IR:   %13 = add i32 %_45, 9, !dbg !28
Source File: sample.rs
Source Line: 13
Source Column: 12
---------------------------------------------
IR:   %14 = icmp ult i32 %13, 19, !dbg !28
Source File: sample.rs
Source Line: 13
Source Column: 12
---------------------------------------------
```

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
