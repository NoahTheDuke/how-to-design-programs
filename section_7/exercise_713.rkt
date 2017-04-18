#lang racket

; CONSTANTS

(define tau 6.28318)

; STRUCTS

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


; FUNCTIONS

; rectangle-area : number number -> number
; Calculate the area of a rectangle
(define (rectangle-area width height)
  (* width height))

; rectangle-perimeter : number -> number
; Calculate the perimeter of a rectangle
(define (rectangle-perimeter top-bottom left-right)
  (+
    (* 2 top-bottom)
    (* 2 left-right)))

; circle-area : number -> number
; Calculate the area of a circle
(define (circle-area radius)
  (* (/ tau 2) radius radius))

; circle-circumference : number -> number
; Calculate the circumference of a cirle
(define (circle-circumference radius)
  (* tau radius))

; shape-perimeter : shape -> number
; Compute the perimeter of a-shape
(define (shape-perimeter a-shape)
  (cond
    [(square? a-shape) (rectangle-perimeter (square-len a-shape) (square-len a-shape))]
    [(circle? a-shape) (circle-circumference (circle-radius a-shape))]
    [else 'fuck-off]))

; shape-area : shape -> number
; Compute the area of a-shape
(define (shape-area a-shape)
  (cond
    [(square? a-shape) (rectangle-area (square-len a-shape) (square-len a-shape))]
    [(circle? a-shape) (circle-area (circle-radius a-shape))]
    [else 'fuck-off]))

; Tests
(shape-perimeter (make-square (make-posn 5 5) 4))
(shape-perimeter (make-circle (make-posn 5 5) 3))
(shape-area (make-square (make-posn 5 5) 4))
(shape-area (make-circle (make-posn 5 5) 3))
