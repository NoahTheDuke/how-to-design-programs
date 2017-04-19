#lang racket

; interest : number -> number
; Calculate the yearly interest a given amount will generate
(define (interest amount)
  (* amount
     (cond
       [(<= amount 1000) 0.040]
       [(<= amount 5000) 0.045]
       [else 0.050])))

(interest 500)
(interest 2000)
(interest 10000)
