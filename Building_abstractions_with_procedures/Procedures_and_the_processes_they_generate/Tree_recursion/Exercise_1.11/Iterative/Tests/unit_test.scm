(import test)

(include "../Sources/exercise.scm")

(import function)

(test-group "'Iterative function' unit tests"
    (test (- 1) (f (- 1)))
    (test 0 (f 0))
    (test 1 (f 1))
    (test 2 (f 2))
    (test 4 (f 3))
    (test 11 (f 4))
    (test 59 (f 6))
    (test 796 (f 9)))

(test-exit)
