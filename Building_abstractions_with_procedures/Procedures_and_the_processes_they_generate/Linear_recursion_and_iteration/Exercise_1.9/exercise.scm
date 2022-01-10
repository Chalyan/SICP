; (define (inc n)
;     (+ n 1))

; (define (dec n)
;     (- n 1))

; Illustrating first procedure
; (define (+ a b)
;   (if (= a 0)
;       b
;       (inc (+ (dec a) b))))

(+ 4 5)
(if (= 4 0)
    5
    (inc (+ (dec 4) 5)))
(inc (+ (dec 4) 5))
(inc (+ 3 5))
(inc 8)
(+ 8 1)
9

; Illustrating second procedure
; (define (+ a b)
;   (if (= a 0)
;       b
;       (+ (dec a) (inc b))))

(+ 4 5)
(if (= 4 0)
    5
    (+ (dec 4) (inc 5)))
(+ (dec 4) (inc 5))
(+ (- 4 1) (+ 5 1))
(+ 3 6)
9
