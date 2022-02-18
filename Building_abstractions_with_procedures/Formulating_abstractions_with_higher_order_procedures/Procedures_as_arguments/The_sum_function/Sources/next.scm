(module number-modifying-functions (increment decrement identity)
    
    (import scheme)
    
    (define (identity number)
        number)

    (define (increment number)
        (+ number 1))
    
    (define (decrement number)
        (- number 1)))
