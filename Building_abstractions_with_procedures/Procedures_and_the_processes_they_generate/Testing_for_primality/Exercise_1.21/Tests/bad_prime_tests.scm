(import test)

(include "../Sources/bad_prime.scm")

(import is-prime-bad)

(test-group "'Prime number with slow algorithm' tests"
(test #t (bad_prime? 2))
(test #f (bad_prime? 4))
(test #t (bad_prime? 5))
(test #f (bad_prime? 9))
(test #t (bad_prime? 13))
(test #t (bad_prime? 19))
(test #f (bad_prime? 39))
(test #f (bad_prime? 125)))

(test-exit)
