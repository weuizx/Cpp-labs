#include "io.h"

void readInt(int &a)
{
    std::cin >> a;
    if (std::cin.fail())
        throw std::runtime_error("Error reading from input stream");
}

void readInt(size_t &a)
{
    std::cin >> a;
    if (std::cin.fail())
        throw std::runtime_error("Error reading from input stream");
}

void readMatrixFromInputStream(int **matrix, size_t rows, size_t columns)
{
    size_t i, j;
    int *p;

    for (i = 0; i < rows; ++i)
    {
        std::cout << "Enter items for matrix line #" << i + 1 << ":" << std::endl;
        for (j = 0; j < columns; ++j, ++p)
            readInt(matrix[i][j]);
    }
}

void readMatrixFromInputStream(std::vector<std::vector<int>> &matrix, size_t rows, size_t columns)
{
    size_t i, j;
    int *p;

    for (i = 0; i < rows; ++i)
    {
        std::cout << "Enter items for matrix line #" << i + 1 << ":" << std::endl;
        for (j = 0; j < columns; ++j, ++p)
            readInt(matrix[i][j]);
    }
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
                throw std::runtime_error("Error reading from file");
        }
        else if (n > 0)
        {
            int chunk_len = lenStr(buf);
            int str_len = len + chunk_len;

            char *temp = new char[str_len + 1];
            if (temp == NULL)
            {
                if (res)
                    delete[] res;
                throw std::runtime_error("Memory allocation error");
            }
            std::copy(res, res + len, temp);
            std::copy(buf, buf + chunk_len, temp + len + 1);
            delete[] res;
            res = temp;
            len = str_len;
        }
        else
        {
            fscanf(file, "%*c");
        }
    } while (n > 0);

    res[len] = '\0';

    return res;
}

char *readTextFromFile(FILE *file)
{

    char *buf = NULL;
    char *res = NULL;
    int len = 0;

    while (true)
    {
        try
        {
            buf = readLineFromFile(file);
        }
        catch (std::runtime_error &e)
        {
            break;
        }
        int chunk_len = lenStr(buf);
        int str_len = len + chunk_len + 1;

        char *temp = new char[str_len + 1];
        if (temp == NULL)
        {
            if (res)
                delete[] res;
            throw std::runtime_error("Memory allocation error");
        }
        std::copy(res, res + len, temp);
        std::copy(buf, buf + chunk_len, temp + len + 1);
        delete[] res;
        res = temp;
        len = str_len;
        res[str_len - 1] = '\n';
    }
    if (len == 0)
    {
        throw std::runtime_error("Error reading from file");
    }

    res[len] = '\0';

    return res;
}