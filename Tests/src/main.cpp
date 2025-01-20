#include <stdio.h>
#include <stdbool.h>
#include "../include/defs.hpp"

struct StringContainer {

	int tip;
	const char* str;

};

const char* str_printer() {

	printf("Gonna let str_printer talk!\n");

	return "str_printer: hello world!";

}

int main() {

	auto my_str_1 = StringContainer{ 300, OBFUSCATE("warevisor") };
	auto my_str_2 = StringContainer{ 90000, OBFUSCATE("warevising") };

	const char* p_my_str_1 = my_str_1.str;
	const char* p_my_str_2 = my_str_2.str;

	printf("%s\n", p_my_str_1);
	printf("%s\n", p_my_str_2);

	printf("%s\n", str_printer());

}