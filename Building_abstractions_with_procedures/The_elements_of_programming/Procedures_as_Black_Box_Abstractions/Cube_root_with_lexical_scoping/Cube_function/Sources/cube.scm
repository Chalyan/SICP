(include "../../../../../The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Square_function/Sources/square.scm")

(module cube_func (cube)

    (import scheme)

    (import square_func)

    (define (cube x) (* (square x) x)))
