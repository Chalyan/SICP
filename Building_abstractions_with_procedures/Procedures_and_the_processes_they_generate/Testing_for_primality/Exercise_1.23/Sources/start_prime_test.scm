(include "../Sources/prime.scm")

(include "../Sources/report_time.scm")

(module prime-output (start-prime-test)
    
    (import scheme)

    (import (chicken time))
    
    (import report-time)
    
    (define (start-prime-test prime_function number start-time)
        (if (prime_function number)
            (report_time (- (current-seconds) start-time))
            "")))
