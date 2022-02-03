(include "../Sources/start_prime_test.scm")

(module timed-prime (timed-prime-test)
    
    (import scheme)
    
    (import prime-output)

    (import (chicken time))
    
    (define (timed-prime-test prime_function number)
        (newline)
        (display number)
        (newline)
        (start-prime-test prime_function number (current-seconds))))
