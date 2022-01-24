(import test)

(include "../Sources/iterative_exponentiation.scm")

(import iterative-exponentiation)

(test-group "'Iterative exponentiation' tests"
    (test (- 1) (fast-expt 0 0))
    (test 0 (fast-expt 0 1))
    (test 0 (fast-expt 0 2))
    (test 1 (fast-expt 1 1))
    (test 2 (fast-expt 2 1))
    (test 4 (fast-expt 2 2))
    (test 9 (fast-expt (- 3) 2))
    (test (- 7) (fast-expt (- 7) 1)))

(test-exit)
