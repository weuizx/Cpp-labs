#include "io.h"

#include <stdio.h>

int readInt(int *a)
{
    int n;
    do
    {
        n = scanf("%d", a);
        if (n < 0)
            return 0;
        if (n == 0)
        {
            printf("%s\n", "Error! Repeat input");
            scanf("%*c");
        }
    } while (n == 0);
    return 1;
}

int readMatrixFromInputStream(int **matrix, size_t rows, size_t columns)
{
    size_t i, j;
    int *p;

    for (i = 0; i < rows; ++i)
    {
        printf("Enter items for matrix line #%d:\n", i + 1);
        for (j = 0; j < columns; ++j, ++p)
            if (readInt(&matrix[i][j]) == 0)
            {
                return 0;
            }
    }
    return 1;
}

int lenStr(char *buf)
{
    int i = 0;
    while (*(buf + i))
    {
        ++i;
    }
    return i;
}

char *readLineFromFile(FILE *file)
{
    char buf[81] = {0};
    char *res = NULL;
    int len = 0;
    int n = 0;

    do
    {
        n = fscanf(file, "%80[^\n]", buf);
        if (n < 0)
        {
            if (!res)
            {
                return NULL;
            }
        }
        else if (n > 0)
        {
            int chunk_len = lenStr(buf);
            int str_len = len + chunk_len;

            char *temp = realloc(res, str_len + 1);
            if (temp == NULL)
            {
                free(res);
                return NULL;
            }
            res = temp;
            memcpy(res + len, buf, chunk_len);
            len = str_len;
        }
        else
        {
            fscanf(file, "%*c");
        }
    } while (n > 0);

    if (len > 0)
    {
        res[len] = '\0';
    }

    return res;
}

char *readTextFromFile(FILE *file)
{

    char *buf = NULL;
    char *res = NULL;
    int len = 0;

    while (buf = readLineFromFile(file))
    {
        int chunk_len = lenStr(buf);
        int str_len = len + chunk_len + 1;

        char *temp = realloc(res, str_len + 1);
        if (temp == NULL)
        {
            free(res);
            return NULL;
        }
        res = temp;
        memcpy(res + len, buf, chunk_len);
        len = str_len;
        res[str_len - 1] = '\n';
    }
    if (len == 0)
    {
        res = NULL;
    }
    else
    {
        res[len] = '\0';
    }

    return res;
}