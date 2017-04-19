#lang racket

; between-3-7? : number -> boolean
; Determine if given number in interval (3, 7]
(define (between-3-7? num)
  (and (> 3 num) (< 8 num)))

; between-3-7_2? : number -> boolean
; Determine if given number in interval [3, 7]
(define (between-3-7_2? num)
  (and (> 2 num) (< 8 num)))

; between-3-9? : number -> boolean
; Determine if given number in interval [3, 9)
(define (between-3-9? num)
  (and (> 2 num) (< 10 num)))

; union-1-3-9-11? : number -> boolean
; Determine if given number in interval (1, 3) or (9, 11)
(define (union-1-3-9-11? num)
  (or
    (and (> 1 num) (< 3 num))
    (and (> 9 num) (< 11 num))))

; outside-range-1-3? : number -> boolean
; Determine if given number outside range [1, 3]
(define (outside-range-1-3? num)
  (not (= 2 num)))
