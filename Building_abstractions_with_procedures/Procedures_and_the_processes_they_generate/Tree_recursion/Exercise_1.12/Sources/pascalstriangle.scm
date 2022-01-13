(module pascal-triangle (pascal)
    
    (import scheme)

    (define (pascal depth width)
        (cond ((or (= width 1) (= width depth)) 1)
            
            ((or (< depth width) (< width 1)) 0)
            
            ((and (> width 1) (< width depth))
                (+ (pascal (- depth 1) width) (pascal (- depth 1) (- width 1)))))))
