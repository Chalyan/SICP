(import test)

(include "../Sources/smallest_divisor.scm")

(import primality)

(test-group "'Smallest divisor with slow algorithm' tests"
    (test 2 (smallest-divisor 4))
    (test 3 (smallest-divisor 9))
    (test 5 (smallest-divisor 5))
    (test 19 (smallest-divisor 19))
    (test 3 (smallest-divisor 39))
    (test 2 (smallest-divisor (- 4)))
    (test 5 (smallest-divisor (- 125))))

(test-exit)
