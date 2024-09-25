#include "dialog.h"
#include "io.cpp"
#include "html.cpp"

void dialogArrays()
{
    size_t rows;
    size_t columns;

    const char *pr = "";
    do
    {
        std::cout << pr << std::endl;
        std::cout << "Enter number of rows: --> ";
        pr = "You are wrong; repeat, please!";
        try
        {
            readInt(rows);
        }
        catch (std::runtime_error &e)
        {
            std::cout << e.what() << std::endl;
        }
    } while (rows < 1);

    pr = "";
    do
    {
        std::cout << pr << std::endl;
        std::cout << "Enter number of columns: --> ";
        pr = "You are wrong; repeat, please!";
        try
        {
            readInt(columns);
        }
        catch (std::runtime_error &e)
        {
            std::cout << e.what() << std::endl;
        }
    } while (columns < 1);

    int **matrix = new int *[rows];
    for (size_t i = 0; i < rows; i++)
        matrix[i] = new int[columns];

    try
    {
        readMatrixFromInputStream(matrix, rows, columns);
    }
    catch (std::runtime_error &e)
    {
        for (size_t i = 0; i < rows; i++)
            delete[] matrix[i];
        delete[] matrix;
        std::cout << e.what() << std::endl;
        return;
    }

    char *result;
    std::cout << "Use styles from ../resources/styles.txt?(Y/N)" << std::endl;
    char answer;
    std::cin >> answer;
    if (answer == 'Y' || answer == 'y')
    {
        char *stylesFileName = "../resources/styles.txt";
        FILE *file = fopen(stylesFileName, "r");
        char *styles = readTextFromFile(file);
        fclose(file);
        result = generateHtmlFromMatrix((const int **)matrix, rows, columns, styles);
    }
    else
        result = generateHtmlFromMatrix((const int **)matrix, rows, columns);

    std::cout << result << std::endl;
}

void dialogVectors()
{
    size_t rows;
    size_t columns;

    const char *pr = "";
    do
    {
        std::cout << pr << std::endl;
        std::cout << "Enter number of rows: --> ";
        pr = "You are wrong; repeat, please!";
        try
        {
            readInt(rows);
        }
        catch (std::runtime_error &e)
        {
            std::cout << e.what() << std::endl;
        }
    } while (rows < 1);

    pr = "";
    do
    {
        std::cout << pr << std::endl;
        std::cout << "Enter number of columns: --> ";
        pr = "You are wrong; repeat, please!";
        try
        {
            readInt(columns);
        }
        catch (std::runtime_error &e)
        {
            std::cout << e.what() << std::endl;
        }
    } while (columns < 1);

    std::vector<std::vector<int>> matrix(rows, std::vector<int>(columns));

    try
    {
        readMatrixFromInputStream(matrix, rows, columns);
    }
    catch (std::runtime_error &e)
    {
        std::cout << e.what() << std::endl;
        return;
    }

    char *result;
    std::cout << "Use styles from ../resources/styles.txt?(Y/N)" << std::endl;
    char answer;
    std::cin >> answer;
    if (answer == 'Y' || answer == 'y')
    {
        char *stylesFileName = "../resources/styles.txt";
        std::ifstream file(stylesFileName);
        std::string styles((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
        file.close();
        result = generateHtmlFromMatrix(matrix, styles);
    }
    else
        result = generateHtmlFromMatrix(matrix);

    std::cout << result << std::endl;
}

int dialog(const char *msgs[], int N)
{
    char *errmsg = "";
    int rc;
    int i, n;

    do
    {
        std::cout << errmsg << std::endl;
        errmsg = "You are wrong. Repeate, please!\n";
        for (i = 0; i < N; ++i)
            puts(msgs[i]);
        std::cout << "Make your choice: --> ";
        try
        {
            readInt(rc);
        }
        catch (std::runtime_error &e)
        {
            rc = 0;
            printf(e.what());
        }
    } while (rc < 0 || rc >= N);

    return rc;
}