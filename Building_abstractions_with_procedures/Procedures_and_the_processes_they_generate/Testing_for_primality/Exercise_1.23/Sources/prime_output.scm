(include "../Sources/prime.scm")

(include "../Sources/report_time.scm")

(module prime-output (start-prime-test)
    
    (import scheme)

    (import (chicken time))
    
    (import is-prime)
    
    (import report-time)
    
    (define (start-prime-test number start-time)
        (if (prime? number)
            (report_time (- (current-seconds) start-time))
            (string))))
