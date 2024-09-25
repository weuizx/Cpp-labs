#include "html.h"

#include <stdio.h>

char *generateHtmlFromMatrix(const int **matrix, const size_t rows, const size_t columns)
{
    FILE *file;

    const char *filePath = "../resources/matrix.html";

    file = fopen(filePath, "w");
    if (file == NULL)
    {
        return NULL;
    }

    const char *htmlContent =
        "<!DOCTYPE html>\n"
        "<html lang=\"ru\">\n"
        "<head>\n"
        "    <style>\n"
        "       table, th, td {\n"
        "       border:1px solid black;\n"
        "       }\n"
        "   </style>\n"
        "</head>\n"
        "<body>\n"
        "   <table>\n";

    fprintf(file, htmlContent);

    for (size_t i = 0; i < rows; i++)
    {
        fprintf(file, "        <tr>\n");

        for (size_t j = 0; j < columns; j++)
        {
            fprintf(file, "          <td>%d</th>\n", matrix[i][j]);
        }

        fprintf(file, "      </tr>\n");
    }

    htmlContent =
        "   </table>\n"
        "</body>\n"
        "</html>";

    fprintf(file, htmlContent);

    fclose(file);

    return filePath;
}

char *generateHtmlFromMatrixWithStyle(const int **matrix, const size_t rows, const size_t columns, const char *style)
{
    FILE *file;

    const char *filePath = "../resources/matrix.html";

    file = fopen(filePath, "w");
    if (file == NULL)
    {
        return NULL;
    }

    const char *htmlContent =
        "<!DOCTYPE html>\n"
        "<html lang=\"ru\">\n"
        "<head>\n"
        "    <style>\n";

    fprintf(file, htmlContent);

    fprintf(file, style);

    htmlContent =
        "   </style>\n"
        "</head>\n"
        "<body>\n"
        "   <table>\n";

    fprintf(file, htmlContent);

    for (size_t i = 0; i < rows; i++)
    {
        fprintf(file, "        <tr>\n");

        for (size_t j = 0; j < columns; j++)
        {
            fprintf(file, "          <td>%d</th>\n", matrix[i][j]);
        }

        fprintf(file, "      </tr>\n");
    }

    htmlContent =
        "   </table>\n"
        "</body>\n"
        "</html>";

    fprintf(file, htmlContent);

    fclose(file);

    return filePath;
}