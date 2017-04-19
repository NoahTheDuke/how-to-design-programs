#lang racket

(define tau 6.28318)

; struct posn:
;   x : number
;   y : number
(define-struct posn (x y))

; struct square:
;   nw : posn
;   len : number
(define-struct square (nw len))

; struct circle:
;   center : posn
;   radius : number
(define-struct circle (center radius))

; perimeter : shape -> number
; Compute the perimeter of a-shape
(define (perimeter a-shape)
  (cond
    [(square? a-shape) (* 4 (square-len a-shape))]
    [(circle? a-shape) (* tau (circle-radius a-shape))]
    [else 'fuck-off ]))

; Tests
(perimeter (make-square (make-posn 5 5) 4))
(perimeter (make-circle (make-posn 5 5) 3))
