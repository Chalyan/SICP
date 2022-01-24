(include "../../../../The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Square_function/Sources/square.scm")

(module iterative-exponentiation (fast-expt)
    (import scheme)
    
    (import square_func)    
    
    (define (fast-expt number exponent)
        (fast-expt-iter number exponent 1))

    (define (fast-expt-iter number effective-exponent accumulator)
        (- 2)))
