(include "function_module.scm")

(import functions)

(define (cube_root number)

    (define (good-enough? parameter)
        (< (abs (/ (abs (- (cube parameter) number)) number)) 0.00000000314159))

    (define (better_guess x)
        (/ (+ (/ number (square x)) (* 2 x)) 3))

    (define (cube_root_iter initial_guess)
        (if (good-enough? initial_guess)
            initial_guess
            (cube_root_iter (better_guess initial_guess))))

    (cond ((= number 0) 0)
        ((< number 0) (cube_root_iter (- 1.0)))
        ((> number 0) (cube_root_iter 1.0))))

