(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (good_enough? guess x)
    (< (abs (- (square guess) x)) 0.00000031415926535))

(define (improve guess x)
    (average guess (/ x guess)))

(define (sqrt_iter guess x)
    (if (good_enough? guess x) guess 
        (sqrt_iter (improve guess x) x)))

(define (sqrt x) 
    (if (= x 0) 0 (sqrt_iter 1.0 x)))

(sqrt 9)
