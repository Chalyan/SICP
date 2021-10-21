(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good_enough? guess x)
    (< (/ 
        (abs (- guess (improve guess x))) 
        guess)
    0.00000031415926535)
    )

(define (sqrt_iter guess x)
    (if (good_enough? guess x) guess 
        (sqrt_iter (improve guess x) x)))

(define (sqrt x) (if (= x 0) 0 (sqrt_iter 1.0 x)))

(sqrt 9)
