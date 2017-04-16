#lang racket

; Constants
(define tau 6.28318)

; area-disk : number -> number
; Calculate the area of a disk
(define (area-disk radius)
  (* (/ tau 2) radius radius))

; circumference : number -> number
; Calculate the circumference of a cirle
(define (circumference radius)
  (* tau radius))

; area-rectangle : number number -> number
; Calculate the area of a rectangle
(define (area-rectangle width height)
  (* width height))

; area-cylinder : number number -> number
; Calculate the outer surface area of a cylinder
(define (area-cylinder radius height)
  (+ (* 2 (area-disk radius))
     (area-rectangle (circumference radius) height)))

(printf "~a ~a\n" 245.04 (area-cylinder 3 10))
