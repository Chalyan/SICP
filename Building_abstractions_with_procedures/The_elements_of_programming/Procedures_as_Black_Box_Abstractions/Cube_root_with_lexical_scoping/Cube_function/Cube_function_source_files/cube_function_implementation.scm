(include "../../Square_function/Square_function_source_files/square_function_implementation.scm")

(module cube_func (cube)

    (import scheme)

    (import square_func)

    (define (cube x) (* (square x) x)))
