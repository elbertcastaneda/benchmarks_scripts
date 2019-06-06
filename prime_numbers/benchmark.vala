using Gee;
using GLib;

class PrimeNumbersGenerator {
    public ArrayList<int> getPrimes7(int n) {
        ArrayList<int> res = new ArrayList<int>();

        if (n < 2) return res;
        if (n == 2) {
            res.add(2);
            return res;
        }
        ArrayList<int> s = new ArrayList<int>();
        for (int i = 3; i < n + 1; i += 2) {
            s.add(i);
        }
        int mroot = (int)Math.sqrt(n);
        int half = s.size;
        int i = 0;
        int m = 3;
        while (m <= mroot) {
            if (s.get(i) != 0) {
                int j = (int)((m*m - 3)/2);
                s.set(j, 0);
                while (j < half) {
                    s.set(j, 0);
                    j += m;
                }
            }
            i = i + 1;
            m = 2*i + 3;
        }
        res.add(2);
        for (int it = 0; it < s.size; ++it) {
            if (s.get(it) != 0) {
                res.add(s.get(it));
            }
        }

        return res;
    }
}


int main (string[] args) {

    int64 startTime = GLib.get_real_time ();

    ArrayList<int> res;
    for (int i = 1; i <= 10; ++i) {
        res = (new PrimeNumbersGenerator()).getPrimes7(10000000);
        stdout.printf("Found %d prime numbers.\n", res.size);
    }

    int64 estimatedTime = GLib.get_real_time () - startTime;
    stdout.printf("Execution time: %f.\n", ((double) estimatedTime/1000) / 1000);

    return 0;
}