#lang racket

; how-many : number number number -> number
; Calculate how many solutions exist for a given quadratic equation
(define (how-many a b c)
  (cond
    [(= a 0) #f]
    [else
      (check a b c)]))

; check : number number number -> number
; Calculate the number of solutions, provided a is not 0.
(define (check a b c)
  (cond
    [(> (* b b) (* 4 a c)) 2]
    [(= (* b b) (* 4 a c)) 1]
    [else 0]))

; Tests
(how-many 1 0 -1)
(how-many 2 4 2)
