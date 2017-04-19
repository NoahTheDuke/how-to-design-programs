#lang racket

; equation1 : number -> boolean
; Determine if equation works, lmao
(define (equation1 n)
  (= 62 (+ 2 (* 4 n))))

; equation2 : number -> boolean
; Determine if equation works, lmao
(define (equation2 n)
  (= 102 (* 2 (* n n))))

; equation3 : number -> boolean
; Determine if equation works, lmao
(define (equation3 n)
  (= 462
     (+ (* 4 (* n n))
        (* 6 n)
        2)))

; Tests
(equation1 10) ; false
(equation1 12) ; false
(equation1 14) ; false

(equation2 10) ; false
(equation2 12) ; false
(equation2 14) ; false

(equation3 10) ; true
(equation3 12) ; false
(equation3 14) ; false
