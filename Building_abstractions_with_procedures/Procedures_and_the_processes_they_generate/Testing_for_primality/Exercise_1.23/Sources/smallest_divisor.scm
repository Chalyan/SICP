(include "../../../../The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Square_function/Sources/square.scm")

(include "../../../../Procedures_and_the_processes_they_generate/Testing_for_primality/Exercise_1.23/Sources/next_divisor.scm")

(module primality (smallest-divisor)
    
    (import scheme)

    (import square_func)

    (import next-divisor)

    (define (smallest-divisor number)
        (find-divisor (abs number) 2))
    
    (define (find-divisor number possible-divisor)
        (cond ((> (square possible-divisor) number) number)

              ((= (remainder number possible-divisor) 0) possible-divisor)

              (else (find-divisor number (next possible-divisor))))))
