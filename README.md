benchmarks_scripts
==================

Repo para guardar scripts para hacer benchmarks a los lenguajes de programación mas populares

Les dejo los resultados en mi maquina(MacBook Pro (Retina, 15-inch, Mid 2014), con 16GB de RAM, macOS Mojave 10.14):

---

- PHP 7.2.11 (cli) (built: Oct 11 2018 16:23:09) ( NTS )
```bash
php benchmark.php
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
Execution time: 19
```
---

- Python 2.7.15
```bash
python2.7 benchmark.py
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
('Execution time:', 20.122681140899658)
```
---

- Python 3.7.0
```bash
python3.7 benchmark.py
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
Execution time: 19.33597683906555
```
---

- C++, Apple LLVM version 10.0.0 (clang-1000.11.45.2)
```bash
g++ benchmark.cpp -o benchmark.sh && ./benchmark.sh && rm -Rf ./benchmark.sh
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
Execution time: 2.08 seconds.
```
---

- NodeJS, v8.11.4
```bash
node benchmark.js
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
Execution time: 2.333
```
---

- NodeJS, v11.4.0
```bash
node benchmark.js
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
Execution time: 1.769
```
---

- Java(TM) SE Runtime Environment (build 1.8.0_111-b14)
```bash
javac benchmark.java && java -classpath ./ PrimeNumbersBenchmarkApp && rm -Rf *.class
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
Execution time: 3.316000.
```
---

- ruby 2.5.1p57 (2018-03-29 revision 63029) \[x86_64-darwin18]
```bash
ruby benchmark.rb
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
Execution time: 12.201945.
```
---

- go version go1.11.1 darwin/amd64
```bash
go run benchmark.go
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
Execution time:  0.964141594
```
---

- dart version 2.1.0 (Tue Nov 13 18:22:02 2018 +0100) on "macos_x64"
```bash
dart benchmark.dart 
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
Execution time: 2.122
```
