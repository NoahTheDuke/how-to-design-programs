#lang racket

; Constants
(define tau 6.28318)

; area-pipe-all-in-one : number number number -> number
; Calculate total surface area of the outside, inside, and both ends of a pipe in a single function
(define (area-pipe-all-in-one inner len thickness)
  (+ (* 2 (- (* (/ tau 2) (+ inner thickness) (+ inner thickness))
             (* (/ tau 2) inner inner)))
     (* (* tau inner) len)
     (* (* tau (+ inner thickness) len))))

; circumference : number -> number
; Calculate the circumference of a cirle
(define (circumference radius)
  (* tau radius))

; area-disk : number -> number
; Calculate the area of a disk
(define (area-disk radius)
  (* (/ tau 2) radius radius))

; area-ring : number number -> number
; Calculate the surface area of a ring
(define (area-ring inner outer)
  (- (area-disk outer)
     (area-disk inner)))

; area-rectangle : number number -> number
; Calculate the area of a rectangle
(define (area-rectangle width height)
  (* width height))

; area-cylinder-side : number number -> number
; Calculate the area of the side of a cylinder, which is just a rectangle
; But we're given a radius, so we gotta do fancy things first
(define (area-cylinder-side radius height)
  (area-rectangle (circumference radius) height))

; area-pipe : number number number -> number
; Calculate total surface area of the outside, inside, and both ends of a pipe
(define (area-pipe inner len thickness)
  (+ (* 2 (area-ring inner (+ inner thickness)))
     (area-cylinder-side inner len)
     (area-cylinder-side (+ inner thickness) len)))

(printf "Expected: ~a, Got: ~a\n" 351.85 (area-pipe-all-in-one 2 3 4))
(printf "Expected: ~a, Got: ~a\n" 351.85 (area-pipe 2 3 4))
