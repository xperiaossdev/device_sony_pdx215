#pragma once

#include <cstdarg>
#include <cstdio>
#include <exception>

struct FormatException : public std::exception {
    char buf[1024];
    inline FormatException(const char *fmt...) {
        va_list args;
        va_start(args, fmt);
        vsprintf(buf, fmt, args);
        va_end(args);
    }

    inline const char *what() const throw() {
        return buf;
    }
};
