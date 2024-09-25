#ifndef H_HTML
#define H_HTML

#include <stddef.h>

char *generateHtmlFromMatrix(const int **matrix, const size_t rows, const size_t columns);
char *generateHtmlFromMatrixWithStyle(const int **matrix, const size_t rows, const size_t columns, const char *style);

#endif