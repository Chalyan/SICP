(module functions (square cube)
    (import scheme)
    
    (define (square x)
        (* x x))
    
    (define (cube x)
        (* x (square x))))
