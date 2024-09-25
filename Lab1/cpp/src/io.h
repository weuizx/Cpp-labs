#ifndef H_IO
#define H_IO

#include <iostream>
#include <algorithm>
#include <stdexcept>
#include <vector>

void readInt(int &a);
void readInt(size_t &a);
void readMatrixFromInputStream(int **matrix, size_t rows, size_t columns);
void readMatrixFromInputStream(std::vector<std::vector<int>> &matrix, size_t rows, size_t columns);
int lenStr(char *buf);
char *readLineFromFile(FILE *file);
char *readTextFromFile(FILE *file);

#endif