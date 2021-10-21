(define (facorial n)
    (if (or (= n 0) (= n 1))
        1
        (* n (facorial (- n 1)))))

(facorial 5)