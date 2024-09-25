#include "html.h"
#include "io.h"

#include <stdio.h>

int main()
{
    char *stylesFileName = "../resources/styles.txt";

    FILE *file = fopen(stylesFileName, "r");
    char *styles = readTextFromFile(file);
    fclose(file);

    size_t rows = 10;
    size_t columns = 10;

    const char *pr = "";
    do
    {
        printf("%s\n", pr);
        printf("Enter number of rows: --> ");
        pr = "You are wrong; repeat, please!";
        if (readInt(&rows) == 0)
            return 0;
    } while (rows < 1);

    pr = "";
    do
    {
        printf("%s\n", pr);
        printf("Enter number of columns: --> ");
        pr = "You are wrong; repeat, please!";
        if (readInt(&columns) == 0)
            return 0;
    } while (columns < 1);

    int **matrix = malloc(rows * sizeof(int *));
    for (size_t i = 0; i < rows; i++)
        matrix[i] = malloc(columns * sizeof(int));

    if (readMatrixFromInputStream(matrix, rows, columns) == 0)
    {
        for (size_t i = 0; i < rows; i++)
            free(matrix[i]);
        free(matrix);
        matrix = NULL;
    }

    if (matrix == NULL)
        return 0;

    char *result;
    if (styles)
        result = generateHtmlFromMatrixWithStyle(matrix, rows, columns, styles);
    else
        result = generateHtmlFromMatrix(matrix, rows, columns);

    printf("%s\n", result);

    return 0;
}