#include "main.h"
#include <iostream>
int main(int argc, char** argv)
{
	std::cout << "Hello, World!" << std::endl;
	two c(4,5);
	std::cout << c.sum();
	return 0;
}
