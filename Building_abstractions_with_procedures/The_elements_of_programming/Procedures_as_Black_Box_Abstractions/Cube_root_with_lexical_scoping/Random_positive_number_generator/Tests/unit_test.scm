(import (chicken random))
(import test)
(import test-generative)

(include "../Sources/implementation.scm")

(import rand_pos_num)

(test-group "Random positive number generator function tests"
    (test-generative ((the-number (lambda () (get_a_random_positive_number pseudo-random-real))))
        (test-assert "It's less than or equal to 1" (or (< the-number 1) (= the-number 1)))
        (test-assert "It's greater than 0" (> the-number 0))))

(test-exit)
