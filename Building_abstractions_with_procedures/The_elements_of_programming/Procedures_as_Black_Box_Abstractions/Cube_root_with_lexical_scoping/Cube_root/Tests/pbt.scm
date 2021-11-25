(import (chicken random))
(import test)
(import test-generative)

(include "../Sources/kernel.scm")
(include "../../Random_positive_number_generator/Sources/kernel.scm")

(import rand_pos_num)

(test-generative ((the-number (lambda () (- 1000 (* 2000 (pseudo-random-real))))))
    (test-assert "Cube root of a number in range from -1000 to 1000 is numeric"  (number? (cube_root the-number))))

(test-generative ((the-number (lambda () (* 1000 (get_a_random_positive_number pseudo-random-real)))))
    (test-assert "Cube root of a number in range from 0(not included) to 1000 is positive"  (positive? (cube_root the-number))))

(test-generative ((the-number (lambda () (* (- 1000) (get_a_random_positive_number pseudo-random-real)))))
    (test-assert "Cube root of a number in range from -1000 to 0(not included) is negative"  (negative? (cube_root the-number))))

(test-group "'Cube root' tests in range from 1 to 1000"
    (test-generative ((the-number (lambda () (+ 1 (* 999 (pseudo-random-real))))))
        (test-assert "Cube root is less than 11" (< (cube_root the-number) 11))
        (test-assert "Cube root is greater than or equal to 1" (or (> (cube_root the-number) 1) (= (cube_root the-number) 1)))
        (test-assert "Cube root is less than it" (< (cube_root the-number) the-number))))

(test-group "'Cube root' tests in range from 0(not included) to 1"
    (test-generative ((the-number (lambda () (get_a_random_positive_number pseudo-random-real))))
        (test-assert "Cube root is less than or equal to 1" (or (< (cube_root the-number) 1) (= (cube_root the-number) 1)))
        (test-assert "Cube root is greater than 0" (> (cube_root the-number) 0))
        (test-assert "Cube root is greater than or equal to it" (or (> (cube_root the-number) the-number) (= (cube_root the-number) the-number)))))

(test-group "'Cube root' tests in range from -1 to 0(not included)"
    (test-generative ((the-number (lambda () (- (get_a_random_positive_number pseudo-random-real)))))
        (test-assert "Cube root is greater than or equal to -1" (or (> (cube_root the-number) (- 1)) (= (cube_root the-number) (- 1))))
        (test-assert "Cube root is less than 0" (< (cube_root the-number) 0))
        (test-assert "Cube root is less than or equal to it" (or (< (cube_root the-number) the-number) (= (cube_root the-number) the-number)))))

(test-group "'Cube root' tests in range from -1000 to -1"
    (test-generative ((the-number (lambda () (+ (- 1) (* (- 999) (pseudo-random-real))))))
        (test-assert "Cube root is greater than -11" (> (cube_root the-number) (- 11)))
        (test-assert "Cube root is less than or equal to -1" (or (< (cube_root the-number) (- 1)) (= (cube_root the-number) (- 1))))
        (test-assert "Cube root is greater than it" (> (cube_root the-number) the-number))))

(test-exit)
