(import (chicken random))
(import test)
(import test-generative)

(include "../Sources/exercise.scm")

(import function)

(test-group "'Iterative function' pbt tests in range from -10 to 3(not included)"
    (test-generative ((the-number (lambda () (- (- (pseudo-random-integer 13) 2)))))
        (test-assert "For any number in the range, f(number) is equal to the number" (= the-number (f the-number)))))

(test-group "'Iterative function' pbt tests in range from 3 to 10"
    (test-generative ((the-number (lambda () (+ 3 (pseudo-random-integer 8)))))
        (test-assert "For any number in the range, f(number) is not equal to the number" (not (= the-number (f the-number))))))

(test-group "'Iterative function' pbt tests for negative integers starting from -9"
    (test-generative ((the-number (lambda () (- (+ 1 (pseudo-random-integer 9))))))
        (test-assert "For any number in the range, f(number) is negative" (negative? (f the-number)))))

(test-group "'Iterative function' pbt tests for positive integers starting from 1"
    (test-generative ((the-number (lambda () (+ 1 (pseudo-random-integer 9)))))
        (test-assert "For any number in the range, f(number) is positive" (positive? (f the-number)))))

(test-exit)
