import 'dart:core';
import 'dart:math';

void main() {
  final start = new DateTime.now();
  for (var i = 0; i < 10; i++) {
    final res = get_primes7(10000000);

    print('Found ${res.length} prime numbers.');
  }

  final end = new DateTime.now();
  final diff = end.difference(start);
  final seconds = (diff.inMilliseconds / 1000).toStringAsFixed(3);

  print('Execution time: ${seconds}');
}

List<int> get_primes7(int n) {
  if (n < 2) {
    return [];
  }
  if (n == 2) {
    return [2];
  }

  final List<int> s = [];
  for (var i = 3; i < n + 1; i += 2) {
    s.add(i);
  }

  final mroot = sqrt(n).floor();
  final half = s.length;
  int i = 0;
  int m = 3;

  while (m <= mroot) {
    if (s[i] != 0) {
      int j = ((m * m - 3) / 2).floor(); // int div
      s[j] = 0;
      while (j < half) {
        s[j] = 0;
        j += m;
      }
    }
    i = i + 1;
    m = 2 * i + 3;
  }

  final res = [2];
  for (int x = 0; x < s.length; x++) {
    if (s[x] != 0) {
      res.add(s[x]);
    }
  }
  return res;
}
