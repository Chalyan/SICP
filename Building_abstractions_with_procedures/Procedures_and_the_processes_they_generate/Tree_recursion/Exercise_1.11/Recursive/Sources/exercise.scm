(module function (f)
    
    (import scheme)

    (define (f number)
        (if (< number 3)
            number
            (+ (f (- number 1))
                (* 2 (f (- number 2)))
                (* 3 (f (- number 3)))))))
