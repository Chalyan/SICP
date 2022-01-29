(include "../../../../The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Square_function/Sources/square.scm")

(module iterative-exponentiation (fast-expt)
    
    (import scheme)
    
    (import square_func)
    
    (define (fast-expt number exponent)
        (fast-expt-iter number exponent 1))

    (define (fast-expt-iter number effective-exponent accumulator)
        (if (= effective-exponent 0)
            (if (= number 0)
                (- 1)
                accumulator)
            
            (if (or (= number 0) (= number 1))
                number
                (if (= (remainder effective-exponent 2) 0)
                    (fast-expt-iter (square number) (/ effective-exponent 2) accumulator)
                    (fast-expt-iter number (- effective-exponent 1) (* accumulator number)))))))
