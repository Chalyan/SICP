;scheme < Cube_root.scm
(define (cube x) (* (square x) x))

(define (improve_approx y x)
    (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (good_enough_approx? y x)
    (< (/ (abs (- y (improve_approx y x))) y) 0.00000031415926535)
    )

(define (cube_root_iter y x)
    (if (good_enough_approx? y x)
        y
        (cube_root_iter (improve_approx y x) x)))

(define (cube_root x)
    (cube_root_iter 1.0 x))

(cube_root 0.008)
