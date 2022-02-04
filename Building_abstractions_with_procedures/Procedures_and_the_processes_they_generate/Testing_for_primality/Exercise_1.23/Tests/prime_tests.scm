(import test)

(include "../Sources/prime.scm")

(import is-prime)

(test-group "'Prime number' tests"
    (test #t (prime? 2))
    (test #f (prime? 4))
    (test #t (prime? 5))
    (test #f (prime? 9))
    (test #t (prime? 13))
    (test #t (prime? 19))
    (test #f (prime? 39))
    (test #f (prime? 125)))

(test-exit)
