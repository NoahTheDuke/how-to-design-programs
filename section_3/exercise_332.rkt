#lang racket

; Constants
(define tau 6.28318)

; area-disk : number -> number
; Calculate the area of a disk
(define (area-disk radius)
  (* (/ tau 2) radius radius))

; volume-cylinder : number number -> number
; Calculate the volume of a cylinder
(define (volume-cylinder radius height)
  (* (area-disk radius) height))

(printf "~a ~a\n" 282.74 (volume-cylinder 3 10))
