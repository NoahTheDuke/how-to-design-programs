#lang racket

; fahrenheit->celsius : number -> number
; Calculate a temperature in Celsius given the temperature in Fahrenheit
(define (fahrenheit->celsius temp)
  (* 5/9 (- temp 32.0)))

; celsius->fahrenheit : number -> number
; Calculate a temperature in Fahrenheit given the temperature in Celsius
(define (celsius->fahrenheit temp)
  (+ 32.0 (* temp 9/5)))

(printf "Expected: ~a, Got: ~a\n" 0 (fahrenheit->celsius 32))
(printf "Expected: ~a, Got: ~a\n" 100 (fahrenheit->celsius 212))
(printf "Expected: ~a, Got: ~a\n" -40 (fahrenheit->celsius -40))

(printf "Expected: ~a, Got: ~a\n" 32 (celsius->fahrenheit 0))
(printf "Expected: ~a, Got: ~a\n" 212 (celsius->fahrenheit 100))
(printf "Expected: ~a, Got: ~a\n" -40 (celsius->fahrenheit -40))
