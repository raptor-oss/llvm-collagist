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
    bool verbosity;
    app.add_option("--source", source_file, "The Path to the original file source langauge")->required();
    app.add_option("--llvmir", llvmir_file, "The Path to LLVM IR file (*.ll)")->required();
    app.add_option("--verbose", verbosity, "Be verbose? (Default: true)")->default_val(true);
    // ----[ Setup logging ]----
    Logger::setVerbosity(verbosity);
    Logger::info("Using", "verbosity", fmt::format("{}", verbosity));

    // ----[ Parse arguments ]---- 
    try {
        app.parse(argc, argv);
    } catch (const ParseError &e) {
        return app.exit(e);
    }

    // ----[ Get the module from the ll file ]----
    Logger::info(fmt::format("Source file {} :: LLVMIR file {}", source_file, llvmir_file));
    extractSourceInfo(source_file, llvmir_file);
    return 0;
}