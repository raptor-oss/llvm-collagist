#include "CLI11.hpp"

using namespace std;

int main(int argc, char **argv)
{
    App app{ "LLVM IR Slicer and Source Extractor" };

    string inputFilePath;
    app.add_option("--input", inputFilePath, "The Path to LLVM IR file (*.ll)")->required();

    try {
        app.parse(argc, argv);
    } catch (const ParseError &e) {
        return app.exit(e);
    }

    cout << "Input file path: " << inputFilePath;

    return 0;
}