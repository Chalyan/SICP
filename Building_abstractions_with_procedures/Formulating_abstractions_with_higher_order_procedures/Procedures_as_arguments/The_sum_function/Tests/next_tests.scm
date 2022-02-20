(import test)

(include "../Sources/next.scm")

(import number-modifying-functions)

(test-group "'Next number' tests"
    (test 0 (increment (- 1)))
    (test 1 (increment 0))
    (test 2 (increment 1))
    (test (- 3) (increment (- 4)))
    (test 0 (decrement 1))
    (test 1 (decrement 2))
    (test (- 1) (decrement 0))
    (test (- 4) (decrement (- 3)))
    (test 0 (identity 0))
    (test 1 (identity 1))
    (test (- 1) (identity (- 1)))
    (test (- 4) (identity (- 4))))

(test-exit)
