(module next-divisor (next)
    
    (import scheme)
    
    (define (next number)
        (if (= number 2)
            3
            (+ number 2))))
