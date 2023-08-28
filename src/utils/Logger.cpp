#include "utils/Logger.h"
#include <iostream>
#include <ctime>
#include <string>

using namespace std;

// Initialize static variable
bool Logger::verbose = false;

void Logger::setVerbosity(bool val) {
    verbose = val;
}

bool Logger::isVerbose() {
    return verbose;
}