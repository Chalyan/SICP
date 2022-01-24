(import (chicken random))
(import test)
(import test-generative)

(include "../Sources/iterative_exponentiation.scm")

(include "../../../../The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Random_positive_number_generator/Sources/rand_pos_num_gen.scm")

(import iterative-exponentiation)

(import rand_pos_num)

(test-group "'Iterative exponentiation' pbt tests for negative numbers with positive exponents"
    (test-generative ((number (lambda () (- (* (get_a_random_positive_number pseudo-random-real) 10))))
                     (exponent (lambda () (+ (pseudo-random-integer 5) 1))))
        (test-assert "For any negative number and odd exponent, the value of function is negative" 
            (negative? (fast-expt number exponent)))
        (test-assert "For any negative number and even exponent, the value of function is positive" 
            (positive? (fast-expt number exponent)))))

(test-group "'Iterative exponentiation' pbt tests for positive numbers with non negative exponents"
    (test-generative ((number (lambda () (* (get_a_random_positive_number pseudo-random-real) 10)))
                     (exponent (lambda () (+ (pseudo-random-integer 5) 1))))
        (test-assert "For any positive number and positive exponent, the value of function is positive" 
            (positive? (fast-expt number exponent)))
        (test-assert "For any positive number and exponent with value of 0, the value of function is 1" 
            (= (fast-expt number 0) 1))))

(test-group "'Iterative exponentiation' pbt tests for numbers, which have absolute values in range (0,1], and positive exponents"
    (test-generative ((positive-number (lambda () (get_a_random_positive_number pseudo-random-real)))
                     (negative-number (lambda () (- (get_a_random_positive_number pseudo-random-real))))
                     (exponent (lambda () (+ (pseudo-random-integer 5) 1))))
        (test-assert "For any number in the range, the absolute value of number is greater than or equal to the absolute value of function" 
            (and (or (< (fast-expt positive-number exponent) positive-number) (= (fast-expt positive-number exponent) positive-number)) 
                 (or (< (abs (fast-expt negative-number exponent)) negative-number) (= (abs (fast-expt negative-number exponent)) negative-number))))))

(test-exit)
