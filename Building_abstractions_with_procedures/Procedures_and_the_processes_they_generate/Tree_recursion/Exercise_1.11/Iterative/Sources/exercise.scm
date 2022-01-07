(module function (f)
    
    (import scheme)

    (define (f number)
        (f_iter 2 number))
        
    (define (f_iter comparable number)
        (if (or (= number comparable) (< number comparable))
            number
            (+ (f_iter comparable (- number 1))
                (* 2 (f_iter comparable (- number 2)))
                (* 3 (f_iter comparable (- number 3)))))))
