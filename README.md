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
cmake -DLLVM_DIR_PATH="/path/to/your/llvm" ..
```

Since I used homebrew my path was "/opt/homebrew/opt/llvm@13/". So, for me, it would be 

```bash
cmake -DLLVM_DIR_PATH="/opt/homebrew/opt/llvm@13/" ..
cmake -DLLVM_DIR_PATH="/path/to/your/llvm" -DCMAKE_INSTALL_PREFIX=/path/to/your/installation/directory ..
```

Then you can run `make`, and `sudo make install`

```bash
make
make install 
```

Now, if you can't use sudo, then you can configure cmake as follows:

```bash 
cmake -DLLVM_DIR_PATH="/path/to/your/llvm" -DCMAKE_INSTALL_PREFIX="/path/to/your/installation/directory" ..
```

So, for me, if I had to (say) install in `$HOME/.local/opt/LLVMSlicer`, I'd have to use
```bash 
cmake -DLLVM_DIR_PATH="/path/to/your/llvm" -DCMAKE_INSTALL_PREFIX="$HOME/.local/opt/LLVMSlicer" ..
```

_Note: If your install directory (the bin folder inside it) is not in your `$PATH`, be sure to add it._

After successful build, you should see an executable named `LLVMSourceExtractor` inside the `build/` directory.

## Running the Project

For usage instruction, execute:

```bash
❯ llvmslicer --help
LLVM IR Slicer and Source Extractor
Usage: llvmslicer [OPTIONS]

Options:
  -h,--help                   Print this help message and exit
  -l,--llvmir TEXT REQUIRED   The Path to LLVM IR file (*.ll)
  -s,--source TEXT REQUIRED   The Path to the original file source langauge
  -o,--output TEXT [$(PWD)]   The Path to save the generated JSON file.
  -i,--abstraction TEXT [instruction]
                              Slice abstraction. The permitted values are basic block/instruction. (Default "instruction")
  -v,--verbose                Be verbose? (Default: false)
```

To run a sample program (after installing to a path that is visible in `$PATH`):

```bash
❯ llvmslicer -l ../test/test_data/test_rust.ll -s ../test/test_data/test_rust.rs -o /path/to/save/output

2023-08-31 22:11:00	[WARN]	Being verbose.
2023-08-31 22:11:00	[INFO]	Source file ../test/test_data/test_rust.rs
2023-08-31 22:11:00	[INFO]	LLVMIR file ../test/test_data/test_rust.ll
2023-08-31 22:11:00	[WARN]	Granularity level is set to Instruction.
2023-08-31 22:11:00	[INFO]	Save output to /path/to/save/output/test_rust.json
```

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
