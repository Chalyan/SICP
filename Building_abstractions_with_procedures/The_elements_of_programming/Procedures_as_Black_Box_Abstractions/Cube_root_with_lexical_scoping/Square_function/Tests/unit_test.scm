(import test)

(include "../Sources/square.scm")

(import square_func)

(test-group "'Square function' tests"
    (test 0 (square 0))
    (test 1 (square 1))
    (test 1 (square (- 1)))
    (test 1.96 (square 1.4))
    (test 9 (square (- 3))))

(test-exit)
