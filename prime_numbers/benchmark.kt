import java.util.*
import kotlin.math.sqrt

class PrimeNumbersGenerator {
    fun getPrimes7(n: Int): ArrayList<Int> {
        val res = ArrayList<Int>()

        if (n < 2) return res
        if (n == 2) {
            res.add(2)
            return res
        }

        val s = ArrayList<Int>()
        for (i in 3..n step 2) {
            s.add(i)
        }

        val mroot = sqrt(n.toDouble()).toInt()
        val half = s.size
        var i = 0
        var m = 3

        while (m <= mroot) {
            if (s[i] != 0) {
                var j = (m * m - 3) / 2
                s[j] = 0
                while (j < half) {
                    s[j] = 0
                    j += m
                }
            }
            i += 1
            m = 2 * i + 3
        }

        res.add(2)
        for (it in s) {
            if (it != 0) {
                res.add(it)
            }
        }

        return res
    }
}

object PrimeNumbersBenchmarkApp {
    @JvmStatic
    fun main(args: Array<String>) {
        val startTime = System.currentTimeMillis()

        var res: ArrayList<Int>
        for (i in 1..10) {
            res = PrimeNumbersGenerator().getPrimes7(10000000)
            println("Found ${res.size} prime numbers.")
        }

        val estimatedTime = System.currentTimeMillis() - startTime
        println("Execution time: ${estimatedTime / 1000.0} seconds.")
    }
}
