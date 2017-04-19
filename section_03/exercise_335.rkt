#lang racket

; height : number number -> number
; Calculate the height of a rocket at time t given constant accelleration g
(define (height g t)
  (height-at-speed (speed g t) t))

; height-by-speed : number number -> number
; Calculate the height of a rocket at time t given speed v
(define (height-at-speed v t)
  (* (/ 1 2) v t))

; speed : number number -> number
; Calculates the speed reached at time t
(define (speed g t)
  (* g t))

(printf "Expected: ~a, Got: ~a\n" 500 (height 10 10))
