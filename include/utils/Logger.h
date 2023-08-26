#pragma once
#include <string>

class Logger {
public:
    static bool verbose;

    static void setVerbosity(bool val);
    static bool isVerbose();

    static std::string concatenate() {
        return "";
    }

    // TODO: Read more on variadic types
    template<typename First, typename... Strings>
    static std::string concatenate(First arg, const Strings&... rest) {
        return arg + concatenate(rest...);
    }

    static void logMessage(const std::string& msg, const std::string& ansi_color, const std::string& level);
    static void info(const std::string& msg);
    static void done(const std::string& msg);
    static void debug(const std::string& msg);
    static void warn(const std::string& msg);
    static void error(const std::string& msg);
};
