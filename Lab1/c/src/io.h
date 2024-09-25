#ifndef H_IO
#define H_IO

#include <stdio.h>


int readInt(int *a);
int readMatrixFromInputStream(int **matrix, size_t rows, size_t columns);
int lenStr(char *buf);
char *readLineFromFile(FILE *file);
char *readTextFromFile(FILE *file);

#endif