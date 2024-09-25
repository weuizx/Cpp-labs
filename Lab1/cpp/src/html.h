#ifndef H_HTML
#define H_HTML

#include <iostream>
#include <stdexcept>
#include <vector>
#include <fstream>
#include <string>

char *generateHtmlFromMatrix(const int **matrix, const size_t rows, const size_t columns);
char *generateHtmlFromMatrix(const int **matrix, const size_t rows, const size_t columns, const char *style);
char *generateHtmlFromMatrix(const std::vector<std::vector<int>> &matrix);
char *generateHtmlFromMatrix(const std::vector<std::vector<int>> &matrix, const std::string &style);

#endif