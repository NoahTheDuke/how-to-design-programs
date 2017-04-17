#lang racket

; what-kind : number number number -> symbol
; Determine equation degeneracy or number of solutions.
(define (what-kind a b c)
  (cond
    [(= a 0) 'degenerate]
    [(> (* b b) (* 4 a c)) 'two]
    [(= (* b b) (* 4 a c)) 'one]
    [else 'none]))

; Tests
(what-kind 0 0 -1)
(what-kind 1 0 -1)
(what-kind 2 4 2)
(what-kind 1 0 15)

