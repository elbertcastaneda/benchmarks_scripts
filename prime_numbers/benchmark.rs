use std::time::Instant;

fn get_primes_7(n: usize) -> Vec<usize> {
    if n < 2 {
        return Vec::new();
    }
    if n == 2 {
        return vec![2];
    }

    let mut s: Vec<usize> = (3..=n).step_by(2).collect();

    let mut j: usize;
    let mut m = 3;
    let mroot = (n as f64).sqrt() as usize;
    let half = s.len();
    let mut i = 0;
    while m <= mroot {
        if s[i] != 0 {
            j = (m * m - 3) / 2;
            s[j] = 0;
            while j < half {
                s[j] = 0;
                j += m;
            }
        }
        i += 1;
        m = 2 * i + 3;
    }

    let mut res: Vec<usize> = Vec::new();
    res.push(2);
    for v in s.iter() {
        if *v != 0 {
            res.push(*v);
        }
    }

    res
}

fn main() {
    let start_time = Instant::now();

    for _ in 0..10 {
        let res = get_primes_7(10_000_000);
        println!("Found {} prime numbers.", res.len());
    }

    let duration = start_time.elapsed();
    println!("Execution time: {:?}", duration);
}
