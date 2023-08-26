#include <CLI/CLI.hpp>
#include <utils/Logger.h>

#include "Extractor.h"

using namespace std;
using namespace CLI;

int main(int argc, char **argv)
{
    // ----[ Setup logging ]----
    Logger::setVerbosity(true);

    // ----[ Setup CLI ]----
    App app{ "LLVM IR Slicer and Source Extractor" };
    string inputFilePath;
    app.add_option("--input", inputFilePath, "The Path to LLVM IR file (*.ll)")->required();

    // ----[ Parse arguments ]---- 
    try {
        app.parse(argc, argv);
    } catch (const ParseError &e) {
        return app.exit(e);
    }

    // ----[ Get the module from the ll file]----
    Logger::info(Logger::concatenate("Input file path: ", inputFilePath));
    extractSourceInfo(inputFilePath);
    return 0;
}