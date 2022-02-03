(include "../Sources/smallest_divisor.scm")

(module is-prime-bad (bad_prime?)
    
    (import scheme)
    
    (import primality)
    
    (define (bad_prime? number)
        (= (smallest-divisor number) number)))
