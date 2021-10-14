;scheme < firstprogram.scm
(+ 137 349)
(- 1000 334)
(* 5 99)
(/ 10 5)
(+ 2.7 10)
(- (* 3 5) (- 10 6) (+ 1 1 1))
;--------------------------------------
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
(define circumference (* 2 pi radius))
circumference
;--------------------------------------
(define (square x) (* x x))
(square 5)
(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 1 2)
(define (f a) (sum-of-squares (+ a 1) (* a 2)))
(f 1)
;--------------------------------------
(define (abs x)
    (if (< x 0)
        (- x)
        x))
;---------------------------------
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;-----------------------------------
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 3))))) (* 3 (- 6 2) (- 2 7)))
;-----------------------------------
(define (>= x y) (or (> x y) (= x y)))
(define (greater x y)
        (if (> x y) x y))
(define (sum-of-greaters x y z)
        (cond ((and (>= x y) (>= x z)) (sum-of-squares x (greater y z)))
              ((and (>= y x) (>= y z)) (sum-of-squares y (greater x z)))
              ((and (>= z x) (>= z y)) (sum-of-squares z (greater y x)))))
(sum-of-greaters 1 1 1)
;-----------------------------------
(define (a-plus-abs-b a b)
        ((if (> b 0) + -) a b))
(a-plus-abs-b 4 (- 4))
;-----------------------------------

