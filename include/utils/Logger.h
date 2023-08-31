#pragma once
#include <string>
#include <iostream>
#include <ctime>
#include <string>

using namespace std;

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

class Logger {
public:
    static bool verbose;

    static void setVerbosity(bool val);
    static bool isVerbose();

    static void logMessage(const string& msg, const string& ansi_color, const string& level) {
        if (isVerbose()) {
            time_t current_time = time(nullptr);
            char buf[100];
            strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S", localtime(&current_time));
            cerr << ANSI_CYAN << buf << ANSI_RESET << ansi_color << "\t[" << level << "]\t" << ANSI_RESET << msg << endl;
        }
    }

    static string concatenate() {
        return "";
    }
    
    // TODO: Read more on variadic types
    template<typename First, typename... Strings>
    static string concatenate(First arg, const Strings&... rest) {
        return string(arg) + " " + concatenate(rest...);
    }
    
    template<typename First, typename... Strings>
    static void info(First arg, const Strings&... rest) {
        string msg = string(arg) + " " + concatenate(rest...);
        logMessage(msg, ANSI_PURPLE, "INFO");   
    }
    
    template<typename First, typename... Strings>
    static void done(First arg, const Strings&... rest) {
        string msg = string(arg)  + " " +  concatenate(rest...);
        logMessage(msg, ANSI_GREEN, "DONE");
    }
    template<typename First, typename... Strings>
    static void debug(First arg, const Strings&... rest) {
        string msg = string(arg)  + " " +  concatenate(rest...);
        logMessage(msg, ANSI_YELLOW, "DEBUG");
    }
    template<typename First, typename... Strings>
    static void warn(First arg, const Strings&... rest) {
        string msg = string(arg)  + " " +  concatenate(rest...);
        logMessage(msg, ANSI_YELLOW, "WARN");   
    }
    template<typename First, typename... Strings>
    static void error(First arg, const Strings&... rest) {
        string msg = string(arg)  + " " +  concatenate(rest...);
        logMessage(msg, ANSI_RED, "ERROR");
    }
};
