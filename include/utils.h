#define LOG_OK(str) (errs() << std::string("\033[36m[LOG]: ") + str + "\033[0m\n")
#define LOG_WARN(str) (errs() << std::string("\033[33m[WARNING]: ") + str + "\033[0m\n")
#define LOG_ERROR(str) (errs() << std::string("\033[31m[ERROR]: ") + str + "\033[0m\n")
#define LOG_SUCCESS(str) (errs() << std::string("\033[32m[SUCCESS]: ") + str + "\033[0m\n")

#define IN_RANGE(x, min, max) (x >= min && x <= max)