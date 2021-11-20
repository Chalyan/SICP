(import (chicken random))
(import test)
(import test-generative)

(include "../Sources/implementation.scm")

(test-group "In range from 1 to 1000"
    (test-generative ((the-number (lambda () (+ 1 (* 999 (pseudo-random-real))))))
        (test-assert "It's numeric"  (number? the-number))
        (test-assert "It's positive" (positive? the-number))
        (test-assert "It's less than or equal to 1000" (or (< the-number 1000) (= the-number 1000)))
        (test-assert "It's greater than or equal to 1" (or (> the-number 1) (= the-number 1)))
        (test-assert "Its cube root is numeric"  (number? (cube_root the-number)))
        (test-assert "Its cube root is positive" (positive? (cube_root the-number)))
        (test-assert "Its cube root is less than 11" (< (cube_root the-number) 11))
        (test-assert "Its cube root is greater than or equal to 1" (or (> (cube_root the-number) 1) (= (cube_root the-number) 1)))
        (test-assert "Its cube root is less than it" (< (cube_root the-number) the-number))))

(define (get_a_random_positive_number generator)
    (define number1 (generator))
    
    (if (= number1 0)
        0.1
        number1))

(test-group "In range from 0(not included) to 1"
    (test-generative ((the-number (lambda () (get_a_random_positive_number pseudo-random-real))))
        (test-assert "It's numeric"  (number? the-number))
        (test-assert "It's positive" (positive? the-number))
        (test-assert "It's less than or equal to 1" (or (< the-number 1) (= the-number 1)))
        (test-assert "It's greater than 0" (> the-number 0))
        (test-assert "Its cube root is numeric"  (number? (cube_root the-number)))
        (test-assert "Its cube root is positive" (positive? (cube_root the-number)))
        (test-assert "Its cube root is less than or equal to 1" (or (< (cube_root the-number) 1) (= (cube_root the-number) 1)))
        (test-assert "Its cube root is greater than 0" (> (cube_root the-number) 0))
        (test-assert "Its cube root is greater than or equal to it" (or (> (cube_root the-number) the-number) (= (cube_root the-number) the-number)))))

(test-group "In range from -1 to 0(not included)"
    (test-generative ((the-number (lambda () (- (get_a_random_positive_number pseudo-random-real)))))
        (test-assert "It's numeric" (number? the-number))
        (test-assert "It's negative" (negative? the-number))
        (test-assert "It's greater than or equal to -1" (or (> the-number (- 1)) (= the-number (- 1))))
        (test-assert "It's less than 0" (< the-number 0))
        (test-assert "Its cube root is numeric"  (number? (cube_root the-number)))
        (test-assert "Its cube root is negative" (negative? (cube_root the-number)))
        (test-assert "Its cube root is greater than or equal to -1" (or (> (cube_root the-number) (- 1)) (= (cube_root the-number) (- 1))))
        (test-assert "Its cube root is less than 0" (< (cube_root the-number) 0))
        (test-assert "Its cube root is less than or equal to it" (or (< (cube_root the-number) the-number) (= (cube_root the-number) the-number)))))

(test-group "In range from -1000 to -1"
    (test-generative ((the-number (lambda () (+ (- 1) (* (- 999) (pseudo-random-real))))))
        (test-assert "It's numeric"  (number? the-number))
        (test-assert "It's negative" (negative? the-number))
        (test-assert "It's greater than or equal to -1000" (or (> the-number (- 1000)) (= the-number (- 1000))))
        (test-assert "It's less than or equal to -1" (or (< the-number (- 1)) (= the-number (- 1))))
        (test-assert "Its cube root is numeric"  (number? (cube_root the-number)))
        (test-assert "Its cube root is negative" (negative? (cube_root the-number)))
        (test-assert "Its cube root is greater than -11" (> (cube_root the-number) (- 11)))
        (test-assert "Its cube root is less than or equal to -1" (or (< (cube_root the-number) (- 1)) (= (cube_root the-number) (- 1))))
        (test-assert "Its cube root is greater than it" (> (cube_root the-number) the-number))))

(test-exit)
