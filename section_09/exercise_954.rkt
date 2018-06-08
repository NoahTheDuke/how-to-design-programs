#lang racket

; a-list-of-temperatures
; 1) an empty list
; 2) (cons n a-lot) where n is a number and a-lot is a-list-of-temperatures

(define a-lot-0 empty)
(define a-lot-1 (cons 75 empty))
(define a-lot-2 (cons 75 (cons 20 empty)))
(define a-lot-3 (cons 75 (cons 95 (cons 25 empty))))
(define a-lot-4 (cons 75 (cons 2 (cons 10 (cons 55 empty)))))

; check-range : lower-limit, upper-limit, a-lot -> number
(define (check-range lower-limit upper-limit a-lot)
  (cond
    [(empty? a-lot) #t]
    [(number? (first a-lot))
     (cond
       [(and (> (first a-lot) lower-limit)
             (< (first a-lot) upper-limit))
        (check-range lower-limit upper-limit (rest a-lot))]
       [else #f])]
    [else #f]))

; Tests
(boolean=? #t (check-range 5 95 a-lot-0))
(boolean=? #t (check-range 5 95 a-lot-1))
(boolean=? #t (check-range 5 95 a-lot-2))
(boolean=? #f (check-range 5 95 a-lot-3))
(boolean=? #f (check-range 5 95 a-lot-4))
