#lang racket

; check-guess3 : number number number number -> symbol
; Build a number from the 3 digits, compare against target, return symbol
(define (check-guess3 target d1 d2 d3)
  (check-built target (build-number d1 d2 d3)))

(define (build-number d1 d2 d3)
  (+ d3
     (* 10 d2)
     (* 100 d1)))

(define (check-built target guess)
  (cond
    [(> target guess) 'TooSmall]
    [(= target guess) 'Parfait]
    [(< target guess) 'TooLarge]))

; Tests
(check-guess3 150 1 0 5)
(check-guess3 150 1 5 0)
(check-guess3 150 5 1 0)
