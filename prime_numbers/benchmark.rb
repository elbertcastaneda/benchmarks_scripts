def get_primes7(n)
    if n < 2
        return []
    end
     
    if n == 2
        return [2]
    end
     
    #s = Range.new(3, n, 2)???
    s = []
    i = 3
    while i < n + 1
        s.push(i)
        i += 2
    end
     
    mroot = Math.sqrt(n)
 
    half = s.length
    i = 0
    m = 3
    while m <= mroot
        if s[i] != 0
            j = (m * m - 3) / 2
            s[j] = 0
            while j < half
                s[j] = 0
                j += m
            end
        end
        i = i + 1
        m = 2 * i + 3
    end
     
    res = [2]
    for v in s
        if v != 0
            res.push(v);
        end
    end
#   x = 0
#   while x &lt; s.length
#       if s[x] != 0
#           res.push(s[x])
#       end
#       x = x + 1
#   end
    return res
end
 
 
res = [];
start = Time.now
for i in 1..10
    res = get_primes7 10000000
    puts "Found #{res.length} prime numbers.\n";
end
elapsed = Time.now - start
puts "Execution time: #{elapsed}.\n"
