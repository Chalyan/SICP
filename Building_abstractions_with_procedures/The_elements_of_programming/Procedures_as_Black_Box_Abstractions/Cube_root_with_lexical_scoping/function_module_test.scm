(include "function_module.scm")

(import functions)
(import test)

(test-group "function module tests for square"
    (test 0 (square 0))
    (test 1 (square 1))
    (test 1 (square (- 1)))
    (test 1.96 (square 1.4))
    (test 9 (square (- 3))))

(test-group "function module tests for cube"
    (test 0 (cube 0))
    (test 1 (cube 1))
    (test (- 1) (cube (- 1)))
    (test 2.744 (cube 1.4))
    (test (- 27) (cube (- 3))))

(test-exit)

