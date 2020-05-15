<?hh
error_reporting(E_ALL);
ini_set('display_errors', '1');

function get_primes7(float $n) {
    if ($n < 2) return array();
    if ($n == 2) return array(2);
    $s = range(3, $n, 2);
    $mroot = sqrt($n);
    $half = count($s);
    $i = 0;
    $m = 3;
    while ($m <= $mroot) {
        if ($s[$i]) {
            $j = (int)(($m*$m - 3) / 2);
            $s[$j] = 0;
            while ($j < $half) {
                $s[$j] = 0;
                $j += $m;
            }
        }
        $i = $i + 1;
        $m = 2*$i + 3;
    }
    $res = array(2);
    foreach ($s as $v) {
        if ($v) {
            $res[] = $v;
        }
    }
    return $res;
}

$start = strtotime('now');
$res = array();
for ($i = 1; $i <= 10; ++$i) {
    $res = get_primes7((float)10000000);
    print "Found ".count($res)." prime numbers.\n";
}

$ellapsed = strtotime('now') - $start;

print("Execution time: $ellapsed\n");
