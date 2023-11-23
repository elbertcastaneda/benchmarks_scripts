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
- NodeJS, v18.17.1

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
Execution time: 1.399
```

---

- Bun: v1.0.14

```bash
bun run benchmarkjs
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
Execution time: 1.441
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

---

- dotnet version 2.2.105 (Commit: 7cecb35b92, C#: 7.3) on "macos_x64"

```bash
dotnet tool install -g dotnet-script
dotnet script benchmark.cs
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
Execution time: 1.299
```

---

- Vala 0.44.4 on "macos_x64"

```bash
# export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/usr/local/opt/libffi/lib/pkgconfig"
valac --pkg gee-0.8 benchmark.vala && ./benchmark  && rm ./benchmark

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
Execution time: 2.342681.
```

---

- rustc 1.74.0-nightly (b4e54c6e3 2023-09-11)

```bash
rustc ./benchmark.rs && ./benchmark && rm -Rf ./benchmark
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
Execution time: 2.278723654s
```

---

- Apple clang version 15.0.0 (clang-1500.0.40.1)

```bash
gcc -o benchmark benchmark.c && ./benchmark && rm -Rf ./benchmark
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Execution time: 0.69 seconds (withFixedEstimation).


---

Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Execution time: 0.67 seconds (withManualEstimation).
```

---

- gcc-13 (Homebrew GCC 13.2.0) 13.2.0

```bash
gcc-13 -o benchmark benchmark.c && ./benchmark && rm -Rf ./benchmark
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Found 664579 prime numbers (withFixedEstimation).
Execution time: 0.74 seconds (withFixedEstimation).


---

Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Found 664579 prime numbers (withManualEstimation).
Execution time: 0.70 seconds (withManualEstimation).
```
