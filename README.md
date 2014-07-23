benchmarks_scripts
==================

Repo para guardar scripts para hacer benchmarks a los lenguajes de programación mas populares


Les dejo los resultados en mi maquina(MacBook Pro 15-inch late 2011, con 16GB de RAM):

elberts-mbp:Desktop elbertcastaneda$ /usr/local/zend/bin/php benchmark.php 
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 60
elberts-mbp:Desktop elbertcastaneda$ python2.7 benchmark.py 
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Execution time:', 29.52649998664856)
elberts-mbp:Desktop elbertcastaneda$ python3.3 benchmark.py 
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 21.81986093521118
elberts-mbp:Desktop elbertcastaneda$ python3.4 benchmark.py 
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 24.26309895515442
elberts-mbp:Desktop elbertcastaneda$ ~/Downloads/pypy
pypy-2.3.1-osx64/  pypy3-2.3.1-osx64/ 
elberts-mbp:Desktop elbertcastaneda$ ~/Downloads/pypy-2.3.1-osx64/bin/pypy benchmark.py
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Found', 664579, 'prime numbers.')
('Execution time:', 1.7521071434020996)
elberts-mbp:Desktop elbertcastaneda$ ~/Downloads/pypy3-2.3.1-osx64/bin/pypy benchmark.py
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 1.8719539642333984
elberts-mbp:Desktop elbertcastaneda$ g++ benchmark.cpp -o benchmark.sh 
elberts-mbp:Desktop elbertcastaneda$ ./benchmark.sh 
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 3.00 seconds.
elberts-mbp:Desktop elbertcastaneda$ node benchmark.js 
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 4.458
elberts-mbp:Desktop elbertcastaneda$ javac benchmark.java 
elberts-mbp:Desktop elbertcastaneda$ java -classpath ./ PrimeNumbersBenchmarkApp
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 7.
elberts-mbp:Desktop elbertcastaneda$ ruby benchmark.rb 
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Found 664579 prime numbers.
Execution time: 13.478766.
