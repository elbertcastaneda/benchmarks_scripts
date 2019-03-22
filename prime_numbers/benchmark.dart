import 'dart:core';
import 'dart:math';

void main() {
  var start = new DateTime.now();
  for (var i = 0; i < 10; i++) {
      var res = get_primes7(10000000);
      print('Found ${res.length} prime numbers.');
  }

  var end = new DateTime.now();

  Duration diff = end.difference(start);
  var seconds = (diff.inMilliseconds/1000).toStringAsFixed(3);
  print('Execution time: ${seconds}');
}

List<int> get_primes7(int n) {
    if (n < 2) { return []; }
    if (n == 2) { return [2]; }

    List<int> s = [];
    for (var i = 3; i < n + 1; i += 2) {
        s.add(i);
    }
    
    int mroot = sqrt(n).floor();
    int half = s.length;
    int i = 0;
    int m = 3;

    while (m <= mroot) {
        if (s[i] != 0) {
            int j = ((m * m - 3) / 2).floor();   // int div
            s[j] = 0;
            while (j < half) {
                s[j] = 0;
                j += m;
            }
        }
        i = i + 1;
        m = 2 * i + 3;
    }

    var res = [2];
    for (int x = 0; x < s.length; x++) {
        if (s[x] != 0) {
            res.add(s[x]);
        }
    }
    return res;
}