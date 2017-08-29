#lang racket

; add-up-3: a-list-of-3-numbers -> number
; adds up the three numbers in a-list-f-3-numbers
(define (add-up-3 a-lo3n)
  (+ (first a-lo3n)
     (first (rest a-lo3n))
     (first (rest (rest a-lo3n)))))

; Tests
(= (add-up-3 (cons 2 (cons 1 (cons 3 empty)))) 6)
(= (add-up-3 (cons 0 (cons 1 (cons 0 empty)))) 1)

; distance-to-0-for-3: a-list-of-3-numbers -> number
; finds the distance to the origin from a 3-dimensional point,
; represented by a-list-of-3-numbers
(define (distance-to-0-for-3 a-lo3n)
  (sqrt (+ (sqr (first a-lo3n))
           (sqr (first (rest a-lo3n)))
           (sqr (first (rest (rest a-lo3n)))))))

; Tests
; shamelessly stolen from the HtDP solutions
(= (distance-to-0-for-3 (cons -1 (cons 2 (cons -1 empty)))) (sqrt 6))
(= (distance-to-0-for-3 (cons 0 (cons 1 (cons 0 empty)))) (sqrt 1))
