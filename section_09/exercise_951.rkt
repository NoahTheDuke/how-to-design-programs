#lang racket

; a-list-of-numbers:
; 1) an empty list
; 2) (cons n a-lon) where n is a num and a-lon is a-list-of-numbers

(define ex-1 empty)
(define ex-2 (cons 1.00 empty))
(define ex-3 (cons 17.05 (cons 1.22 (cons 2.59 empty))))

; sum : a-lon -> number
(define (sum a-lon)
  (cond
    [(empty? a-lon) 0]
    [else
      (+ (first a-lon) (sum (rest a-lon)))]))

; Tests
(eqv? 0 (sum ex-1))
(eqv? 1.0 (sum ex-2))
(eqv? 20.86 (sum ex-3))
