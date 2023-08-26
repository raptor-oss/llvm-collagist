#include "utils/Logger.h"
#include <iostream>
#include <ctime>

using namespace std;

// Initialize static variable
bool Logger::verbose = false;

// ANSI color codes
const string ANSI_RESET  = "\033[0m";
const string ANSI_BLACK  = "\033[30m";
const string ANSI_RED    = "\033[31m";
const string ANSI_GREEN  = "\033[32m";
const string ANSI_YELLOW = "\033[33m";
const string ANSI_BLUE   = "\033[34m";
const string ANSI_PURPLE = "\033[35m";
const string ANSI_CYAN   = "\033[36m";
const string ANSI_WHITE  = "\033[37m";

void Logger::setVerbosity(bool val) {
    verbose = val;
}

bool Logger::isVerbose() {
    return verbose;
}

void Logger::logMessage(const string& msg, const string& ansi_color, const string& level) {
    if (isVerbose()) {
        time_t current_time = time(nullptr);
        char buf[100];
        strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S", localtime(&current_time));
        cout << ANSI_CYAN << buf << ANSI_RESET << ansi_color << "\t[" << level << "]\t" << ANSI_RESET << msg << endl;
    }
}

void Logger::info(const string& msg) {
    logMessage(msg, ANSI_PURPLE, "INFO");
}

void Logger::done(const string& msg) {
    logMessage(msg, ANSI_GREEN, "DONE");
}

void Logger::debug(const string& msg) {
    logMessage(msg, ANSI_YELLOW, "DEBUG");
}

void Logger::warn(const string& msg) {
    logMessage(msg, ANSI_YELLOW, "WARN");
}

void Logger::error(const string& msg) {
    logMessage(msg, ANSI_RED, "ERROR");
}
