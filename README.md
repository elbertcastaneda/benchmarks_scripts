benchmarks_scripts
==================

Repo para guardar scripts para hacer benchmarks a los lenguajes de programación mas populares
<br/>
<br/>
Les dejo los resultados en mi maquina(MacBook Pro 15-inch late 2011, con 16GB de RAM):
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ /usr/local/zend/bin/php benchmark.php 
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 60
<br/>
elberts-mbp:Desktop elbertcastaneda$ python2.7 benchmark.py 
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Execution time:', 29.52649998664856)
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ python3.3 benchmark.py 
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 21.81986093521118
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ python3.4 benchmark.py 
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 24.26309895515442
<br/>
elberts-mbp:Desktop elbertcastaneda$ ~/Downloads/pypy
<br/>
pypy-2.3.1-osx64/  pypy3-2.3.1-osx64/ 
<br/>
elberts-mbp:Desktop elbertcastaneda$ ~/Downloads/pypy-2.3.1-osx64/bin/pypy benchmark.py
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Found', 664579, 'prime numbers.')
<br/>
('Execution time:', 1.7521071434020996)
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ ~/Downloads/pypy3-2.3.1-osx64/bin/pypy benchmark.py
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 1.8719539642333984
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ g++ benchmark.cpp -o benchmark.sh
<br/>
elberts-mbp:Desktop elbertcastaneda$ ./benchmark.sh 
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 3.00 seconds.
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ node benchmark.js 
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers
<br/>.
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 4.458
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ javac benchmark.java 
<br/>
elberts-mbp:Desktop elbertcastaneda$ java -classpath ./ PrimeNumbersBenchmarkApp
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 7.
<br/>
<br/>
elberts-mbp:Desktop elbertcastaneda$ ruby benchmark.rb 
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Found 664579 prime numbers.
<br/>
Execution time: 13.478766.
<br/>
<br/>
