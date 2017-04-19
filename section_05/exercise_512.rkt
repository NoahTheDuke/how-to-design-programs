#lang racket

; check-guess : number number -> symbol
; Check second number against first, and return symbol representing relationship
(define (check-guess target guess)
  (cond
    [(> target guess) 'TooSmall]
    [(= target guess) 'Parfait]
    [(< target guess) 'TooLarge]))

; Tests
(check-guess 5 0)
(check-guess 5 5)
(check-guess 5 9)
