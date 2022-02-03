(include "../../../../The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Square_function/Sources/square.scm")

(module primality (smallest-divisor)
    
    (import scheme)

    (import square_func)

    (define (smallest-divisor number)

        (define (find-divisor number possible-divisor)
            (cond ((> (square possible-divisor) number) number)

                ((= (remainder number possible-divisor) 0) possible-divisor)

                (else (find-divisor number (+ possible-divisor 1)))))
            
        (find-divisor (abs number) 2)))
