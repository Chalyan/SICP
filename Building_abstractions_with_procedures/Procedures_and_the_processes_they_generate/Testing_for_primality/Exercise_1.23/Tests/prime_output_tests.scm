(import test)
(import (chicken time))

(include "../Sources/prime_output.scm")

(import prime-output)

(test-group "'Prime number' tests"
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test 2 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test 3 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test 4 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test 5 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test 7 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test 9 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test 13 (current-seconds))))))
    (test-assert (= 0 (- (string-length "") (string-length (start-prime-test 15 (current-seconds))))))
    (test-assert (> 0 (- (string-length "") (string-length (start-prime-test 17 (current-seconds)))))))

(test-exit)
