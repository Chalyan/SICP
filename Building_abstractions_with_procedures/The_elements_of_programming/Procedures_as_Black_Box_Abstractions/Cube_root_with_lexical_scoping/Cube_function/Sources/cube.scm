(include "../../Square_function/Sources/kernel.scm")

(module cube_func (cube)

    (import scheme)

    (import square_func)

    (define (cube x) (* (square x) x)))
