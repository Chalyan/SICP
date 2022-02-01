(include "../Sources/prime_output.scm")

(module timed-prime (timed-prime-test)
    
    (import scheme)
    
    (import prime-output)

    (import (chicken time))
    
    (define (timed-prime-test number)
        (newline)
        (display number)
        (newline)
        (start-prime-test number (current-seconds))))
