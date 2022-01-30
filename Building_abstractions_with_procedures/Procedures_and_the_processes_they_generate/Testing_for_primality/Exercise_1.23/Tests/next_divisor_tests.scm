(import test)

(include "../Sources/next_divisor.scm")

(import next-divisor)

(test-group "'Next divisor' tests"
    (test 3 (next 2))
    (test 5 (next 3))
    (test 7 (next 5))
    (test 9 (next 7))
    (test 13 (next 11))
    (test 19 (next 17)))

(test-exit)
