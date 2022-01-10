(module function (f)
    
    (import scheme)

    (define (f number)
        (f_iter 2 1 2 3 number))
        
    (define (f_iter comparable coefficient-of-two coefficient-of-one coefficient-of-zero number)
        (cond ((= (- number 1) comparable)
                    (+ coefficient-of-one (* 2 coefficient-of-two)))
                
                ((or (< number comparable) (= number comparable))
                    number)

                ((> (- number 1) comparable)
                    (f_iter comparable (+ coefficient-of-two coefficient-of-one)
                        (+ (* 2 coefficient-of-two) coefficient-of-zero) (* 3 coefficient-of-two) (- number 1))))))
