using System;
using System.Collections.Generic;

public class Program
{
    private static List<int> get_primes7(int n)
    {
        List<int> res = new List<int>();
        if (n < 2) return res;

        if (n == 2)
        {
            res.Add(2);
            return res;
        }

        List<int> s = new List<int>();
        for (int z = 3; z < n + 1; z += 2)
        {
            s.Add(z);
        }

        int mroot = (int)Math.Sqrt(n);
        int half = s.Count;
        int i = 0;
        int m = 3;

        while (m <= mroot)
        {
            if (s[i] != 0)
            {
                int j = (int)((m * m - 3) / 2);
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

        res.Add(2);
        s.RemoveAll(item => item == 0);
        res.AddRange(s);

        return res;
    }

    public static void Main(string[] args)
    {
        Stopwatch stopWatch = new Stopwatch();
        stopWatch.Start();
        for (var i = 0; i < 10; i++) {
            var res = get_primes7(10000000);
            Console.Write("Found {0} prime numbers.\n", res.Count);
        }
        stopWatch.Stop();

        var totalSeconds = Math.Round(stopWatch.Elapsed.TotalSeconds, 3);
        Console.Write($"Execution time: {totalSeconds}\n");
    }
}

Program.Main(null);