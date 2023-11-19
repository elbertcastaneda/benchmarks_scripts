#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

void get_primes7_manual_estimation(int n, int **res, int *count)
{
    if (n < 2)
        return;

    if (n == 2)
    {
        (*res)[0] = 2;
        *count = 1;
        return;
    }

    int *s = malloc((n / 2) * sizeof(int));
    int size = 0;

    for (int i = 3; i < n + 1; i += 2)
    {
        s[size++] = i;
    }

    int mroot = sqrt(n);
    int half = size;
    int i = 0;
    int m = 3;

    while (m <= mroot)
    {
        if (s[i])
        {
            int j = (m * m - 3) / 2;
            s[j] = 0;
            while (j < half)
            {
                s[j] = 0;
                j += m;
            }
        }
        i = i + 1;
        m = 2 * i + 3;
    }

    (*res)[0] = 2;
    *count = 1;

    // use standard methods instead of a loop
    int j = 0;
    for (int i = 0; i < half; ++i)
    {
        if (s[i])
        {
            (*res)[(*count)++] = s[i];
        }
    }

    // Free the dynamically allocated memory when done
    free(s);
}

void get_primes7_fixed_estimation(int n, int **res, int *count)
{
    if (n < 2)
        return;

    if (n == 2)
    {
        (*res)[0] = 2;
        *count = 1;

        return;
    }

    // Estimate maximum size for the prime numbers array
    // An estimate based on the prime number theorem
    int max_primes = (n / (log(n) - 1.08366));
    *res = malloc(max_primes * sizeof(int));
    if (*res == NULL)
    {
        perror("Memory allocation failed");
        exit(EXIT_FAILURE);
    }

    int *s = malloc((n / 2) * sizeof(int));
    if (s == NULL)
    {
        free(*res);
        perror("Memory allocation failed");
        exit(EXIT_FAILURE);
    }

    int size = 0;

    for (int i = 3; i < n + 1; i += 2)
    {
        s[size++] = i;
    }

    int mroot = sqrt(n);
    int half = size;
    int i = 0;
    int m = 3;

    while (m <= mroot)
    {
        if (s[i])
        {
            int j = (m * m - 3) / 2;
            s[j] = 0;
            while (j < half)
            {
                s[j] = 0;
                j += m;
            }
        }
        i = i + 1;
        m = 2 * i + 3;
    }

    (*res)[0] = 2;
    *count = 1;

    int j = 0;
    for (int i = 0; i < half; ++i)
    {
        if (s[i])
        {
            (*res)[(*count)++] = s[i];
        }
    }

    free(s);
}

void withManualEstimation()
{
    clock_t start = clock();

    for (int i = 1; i <= 10; ++i)
    {
        // Estimate maximum size
        int *res = malloc(664579 * sizeof(int));
        int count = 0;

        get_primes7_manual_estimation(10000000, &res, &count);
        printf("Found %d prime numbers (withManualEstimation).\n", count);

        // Free memory after each iteration
        free(res);
    }

    double dif = (double)(clock() - start) / CLOCKS_PER_SEC;

    printf("Execution time: %.2lf seconds (withManualEstimation).\n", dif);
}

void withFixedEstimation()
{
    clock_t start = clock();

    for (int i = 1; i <= 10; ++i)
    {
        int *res = NULL;
        int count = 0;

        get_primes7_fixed_estimation(10000000, &res, &count);
        printf("Found %d prime numbers (withFixedEstimation).\n", count);
        free(res);
    }

    double dif = (double)(clock() - start) / CLOCKS_PER_SEC;

    printf("Execution time: %.2lf seconds (withFixedEstimation).\n", dif);
}

void use_sleep(unsigned int milliseconds)
{
  // Use sleep function based on the operating system
    #ifdef _WIN32
    // Sleep for 5 seconds (Windows)
    Sleep(milliseconds);
    #else
    // Sleep for milliseconds / 1000 (Unix-like systems) to use seconds
    sleep(milliseconds / 1000);
    #endif
}

int main()
{
    withFixedEstimation();

    printf("\n\n---\n\n");

    // Use sleep function based on the operating system
    use_sleep(5000);

    withManualEstimation();

    return 0;
}
