#include <CLI/CLI.hpp>
#include <utils/Logger.h>
#include <Extractor.h>
#include <fmt/core.h>

using namespace std;
using namespace CLI;

int main(int argc, char **argv)
{
    // ----[ Setup CLI ]----
    App app{ "LLVM IR Slicer and Source Extractor" };
    
    string source_file;
    string llvmir_file;
    string output_file;
    string abstraction;

    app.add_option("-l, --llvmir", llvmir_file, "The Path to LLVM IR file (*.ll)")->required();
    app.add_option("-s, --source", source_file, "The Path to the original file source langauge")->required();
    app.add_option("-o, --output", output_file, "The Path to save the generated JSON file.")->default_val("$(PWD)");
    app.add_option("-i, --abstraction", abstraction, "Slice abstraction. The permitted values are basic block/instruction. (Default \"instruction\")")->default_val("instruction");

    // Set the correct path for $PWD
    output_file = output_file == "$(PWD)" ? std::filesystem::current_path().string() : output_file;

    bool verbosity = false;
    app.add_flag("-v, --verbose", verbosity, "Be verbose? (Default: false)");
    
    // ----[ Parse arguments ]---- 
    try {
        app.parse(argc, argv);
    } catch (const ParseError &e) {
        return app.exit(e);
    }

    // ----[ Setup logging ]----
    Logger::setVerbosity(verbosity);
    if (verbosity){
        Logger::info("Being verbose.");
    }

    // ----[ Get the module from the ll file ]----
    int mode = abstraction == "block" ? 0 : 1;

    Logger::info(fmt::format("Source file {} :: LLVMIR file {}", source_file, llvmir_file));
    extractSourceInfo(source_file, llvmir_file, mode, output_file);
    return 0;
}