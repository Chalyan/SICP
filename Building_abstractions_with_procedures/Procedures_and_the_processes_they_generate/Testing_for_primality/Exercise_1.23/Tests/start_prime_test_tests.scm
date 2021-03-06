(import test)
(import (chicken time))

(include "../Sources/start_prime_test.scm")
(include "../Sources/prime.scm")
(include "../../Exercise_1.21/Sources/bad_prime.scm")

(import prime-output)
(import is-prime)
(import is-prime-bad)

(test-group "'Printing time, if the number is prime with both fast and slow algorithms' tests"
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test prime? 2 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test prime? 3 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test prime? 4 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test prime? 5 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test prime? 7 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test prime? 9 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test prime? 13 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test prime? 15 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test prime? 17 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test bad_prime? 2 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test bad_prime? 3 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test bad_prime? 4 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test bad_prime? 5 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test bad_prime? 7 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test bad_prime? 9 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test bad_prime? 13 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test bad_prime? 15 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test bad_prime? 17 (current-seconds)))))))

(test-exit)
