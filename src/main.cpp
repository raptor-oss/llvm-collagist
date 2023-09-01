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
    app.add_option("-o, --output", output_file, "The Path to save the generated JSON file. (Default: $PWD)")->default_val("$(PWD)");
    app.add_option("-i, --abstraction", abstraction, "Slice abstraction. The permitted values are basic block/instruction. (Default \"instruction\")")->default_val("instruction");

    // Set the correct path for $PWD
    output_file = output_file == "$(PWD)" ? std::filesystem::current_path().string() : output_file;

    bool quiet = false;
    app.add_flag("-q, --quiet", quiet, "Be silent? (Default: false)");
    
    // ----[ Parse arguments ]---- 
    try {
        app.parse(argc, argv);
    } catch (const ParseError &e) {
        return app.exit(e);
    }

    // ----[ Setup logging ]----
    if (quiet)
        Logger::setVerbosity(false);
    else {
        Logger::setVerbosity(true);
        Logger::warn("Being verbose.");
    }

    // ----[ Get the module from the ll file ]----
    int mode = abstraction == "block" ? 0 : 1;

    Logger::info(fmt::format("Source file {}", source_file));
    Logger::info(fmt::format("LLVMIR file {}", llvmir_file));
    extractSourceInfo(source_file, llvmir_file, mode, output_file);
    return 0;
}