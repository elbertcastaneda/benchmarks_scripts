import scala.collection.mutable.ArrayBuffer

class PrimeNumbersGenerator {
  def getPrimes(n: Int): ArrayBuffer[Int] = {
    val res = ArrayBuffer[Int]()

    if (n < 2) return res
    if (n == 2) {
      res += 2
      return res
    }

    val s = ArrayBuffer[Int]()
    for (i <- 3 to n by 2) {
      s += i
    }

    val mroot = math.sqrt(n).toInt
    val half = s.size
    var i = 0
    var m = 3

    while (m <= mroot) {
      if (s(i) != 0) {
        var j = (m * m - 3) / 2
        s(j) = 0
        while (j < half) {
          s(j) = 0
          j += m
        }
      }
      i += 1
      m = 2 * i + 3
    }

    res += 2
    for (it <- s.indices) {
      if (s(it) != 0) {
        res += s(it)
      }
    }

    res
  }
}

object PrimeNumbersBenchmarkApp {
  def main(args: Array[String]): Unit = {
    val startTime = System.currentTimeMillis()

    var res: ArrayBuffer[Int] = null
    for (_ <- 1 to 10) {
      res = (new PrimeNumbersGenerator).getPrimes(10000000)
      println(s"Found ${res.size} prime numbers.")
    }

    val estimatedTime = (System.currentTimeMillis() - startTime).toDouble / 1000
    println(f"Execution time: $estimatedTime%.2f seconds.")
  }
}
