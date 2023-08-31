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
    string abstraction;

    app.add_option("--llvmir", llvmir_file, "The Path to LLVM IR file (*.ll)")->required();
    app.add_option("--source", source_file, "The Path to the original file source langauge")->required();
    app.add_option("--abstraction", abstraction, "Slice abstraction. The permitted values are basic block/instruction. (Default \"instruction\")")->default_val("instruction");
    
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
    if (verbosity==true){
        Logger::info("Being verbose.");
    }

    // ----[ Get the module from the ll file ]----
    int mode = 1;
    if (abstraction == "basic block")
        int mode = 0;
    else 
        int mode = 1;

    Logger::info(fmt::format("Source file {} :: LLVMIR file {}", source_file, llvmir_file));
    extractSourceInfo(source_file, llvmir_file, mode);
    return 0;
}