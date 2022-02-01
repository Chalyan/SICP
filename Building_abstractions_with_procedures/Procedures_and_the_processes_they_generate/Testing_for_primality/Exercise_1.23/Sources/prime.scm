(include "../Sources/smallest_divisor.scm")

(module is-prime (prime?)
    
    (import scheme)
    
    (import primality)
    
    (define (prime? number)
        (= (smallest-divisor number) number)))
