(module sum-function (sum)
    
    (import scheme)
    
    (define (sum term lower-bound next upper-bound)
        (if (> lower-bound upper-bound)
            0
            (+ (term lower-bound) (sum term (next lower-bound) next upper-bound)))))
