(define (cube_root x)

    (define (cube_iter y)
        (if (good_enough? y)
            y
            (cube_iter (improve y))))

    (define (good_enough? y)
        (< (/ (abs (- (cube y) x)) x) 0.000000314159))
        
    (define (cube y)
        (* (square y) y))

    (define (square y)
        (* y y))

    (define (improve y)
        (/ (+ (/ x (square y)) (* 2 y)) 3))

    (cube_iter 1.0))

(cube_root 125)
