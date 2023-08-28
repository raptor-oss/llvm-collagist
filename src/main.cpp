#include <CLI/CLI.hpp>
#include <utils/Logger.h>
#include <Extractor.h>

using namespace std;
using namespace CLI;

int main(int argc, char **argv)
{
    // ----[ Setup CLI ]----
    App app{ "LLVM IR Slicer and Source Extractor" };
    string inputFilePath;
    bool verbosity;
    app.add_option("--input", inputFilePath, "The Path to LLVM IR file (*.ll)")->required();
    app.add_option("--verbose", verbosity, "Set verbosity (Default: true)")->default_val(true);

    // ----[ Setup logging ]----
    Logger::setVerbosity(verbosity);

    // ----[ Parse arguments ]---- 
    try {
        app.parse(argc, argv);
    } catch (const ParseError &e) {
        return app.exit(e);
    }

    // ----[ Get the module from the ll file ]----
    Logger::info(Logger::concatenate("Input file path: ", inputFilePath));
    extractSourceInfo(inputFilePath);
    return 0;
}