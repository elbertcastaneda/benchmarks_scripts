#include <cstdio>
#include <cmath>
#include <vector>
#include <algorithm>
#include <ctime>

using namespace std;

void get_primes7(int n, vector<int> &res) {
    if (n < 2)
        return;
    if (n == 2) {
        res.push_back(2);
        return;
    }

    // Preasignar capacidad para el vector s
    vector<int> s;
    s.reserve(n / 2);

    for (int i = 3; i <= n; i += 2) {
        s.push_back(i);
    }

    size_t mroot = static_cast<size_t>(sqrt(n));
    size_t half = s.size();
    size_t i = 0;
    size_t m = 3;

    while (m <= mroot) {
        if (s[i]) {
            // Evita la conversión de tipos innecesaria
            size_t j = (m * m - 3) / 2;
            while (j < half) {
                s[j] = 0;
                j += m;
            }
        }
        i++;
        m = 2 * i + 3;
    }

    res.push_back(2);
    res.insert(res.end(), s.begin(), remove(s.begin(), s.end(), 0));
}

int main() {
    clock_t start = clock();

    for (int i = 1; i <= 10; ++i) {
        vector<int> res;
        get_primes7(10000000, res);
        printf("Found %d prime numbers.\n", static_cast<int>(res.size()));
    }

    double dif = static_cast<double>(clock() - start) / CLOCKS_PER_SEC;
    printf("Execution time: %.2lf seconds.\n", dif);

    return 0;
}
