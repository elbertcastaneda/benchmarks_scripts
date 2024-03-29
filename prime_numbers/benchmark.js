function get_primes7(n) {
  if (n < 2) { return []; }
  if (n == 2) { return [2]; }

  var s = [];
  for (var i = 3; i < n + 1; i += 2) {
    s.push(i);
  }

  var mroot = Math.floor(Math.sqrt(n));
  var half = s.length;
  var i = 0;
  var m = 3;

  while (m <= mroot) {
    if (s[i]) {
      var j = Math.floor((m * m - 3) / 2);   // int div
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
  for (var x = 0; x < s.length; x++) {
    if (s[x]) {
      res.push(s[x]);
    }
  }

  return res;
}

var start = new Date().getTime();

for (var i = 0; i < 10; i++) {
  var res = get_primes7(10000000);

  console.log("Found " + res.length + " prime numbers.");
}

var end = new Date().getTime();
var time = end - start;

console.log('Execution time: ' + (time / 1000));