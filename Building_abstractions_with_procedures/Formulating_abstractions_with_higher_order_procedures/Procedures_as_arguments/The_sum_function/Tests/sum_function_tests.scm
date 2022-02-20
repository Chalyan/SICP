(import test)

(include "../Sources/sum_function.scm")
(include "../Sources/next.scm")
(include "../../../../The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Cube_function/Sources/cube.scm")

(import sum-function)
(import cube_func)
(import square_func)
(import number-modifying-functions)

(test-group "'Sum function' tests for different functions"
    (test 0 (sum identity 4 increment 3))
    (test 4 (sum identity 4 increment 4))
    (test 55 (sum identity 1 increment 10))
    (test 45 (sum identity 0 increment 9))
    (test 0 (sum identity (- 5) increment 5))
    (test 0 (sum square 4 increment 3))
    (test 16 (sum square 4 increment 4))
    (test 14 (sum square 1 increment 3))
    (test 29 (sum square 2 increment 4))
    (test 110 (sum square (- 5) increment 5))
    (test 0 (sum cube 4 increment 3))
    (test 64 (sum cube 4 increment 4))
    (test 3025 (sum cube 1 increment 10))
    (test 2025 (sum cube 0 increment 9))
    (test 0 (sum cube (- 5) increment 5)))

(test-exit)
