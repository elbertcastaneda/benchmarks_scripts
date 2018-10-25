#include <cstdio>
#include <cmath>
#include <vector>
#include <algorithm>

using namespace std;

// Some performance optimizations are commented out as an alternative implementation.
// See the comments by Vinicius Miranda for more information:
// http://blog.famzah.net/2010/07/01/cpp-vs-python-vs-perl-vs-php-performance-benchmark/#comment-5347

void get_primes7(int n, vector<int> &res)
{
    if (n < 2)
        return;
    if (n == 2)
    {
        res.push_back(2);
        return;
    }
    vector<int> s;
    for (int i = 3; i < n + 1; i += 2)
    {
        s.push_back(i);
    }
    int mroot = sqrt(n);
    int half = static_cast<int>(s.size());
    int i = 0;
    int m = 3;
    while (m <= mroot)
    {
        if (s[i])
        {
            int j = static_cast<int>((m * m - 3) * 0.5);
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
    
    res.push_back(2);

    // use standard methods instead of a loop
    std::vector<int>::iterator pend = std::remove(s.begin(), s.end(), 0);
    res.insert(res.begin() + 1, s.begin(), pend);
}

int main()
{
#include <time.h>
    time_t start = clock();

    for (int i = 1; i <= 10; ++i)
    {
        vector<int> res;
        get_primes7(10000000, res);
        printf("Found %d prime numbers.\n", (int) res.size());
    }

    double dif = float(clock() - start) / CLOCKS_PER_SEC;

    printf("Execution time: %.2lf seconds.\n", dif);

    return 0;
}
