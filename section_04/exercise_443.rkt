#lang racket

(define (less-than-500 c)
  (* c (* 0.25 1/100)))

(define (between-500-1500 c)
  (+ (less-than-500 500)
     (* (- c 500) (* 0.50 1/100))))

(define (between-1500-2500 c)
  (+ (between-500-1500 1500)
     (* (- c 1500) 0.0075)))

(define (greater-than-2500 c)
  (+ (between-1500-2500 2500)
     (* (- c 2500) 0.01)))

; pay-back : number -> number
; Calculate the amount a credit card user earns back on purchases
(define (pay-back c)
  (cond
    [(<= c 500) (less-than-500 c)]
    [(<= c 1500) (between-500-1500 c)]
    [(<= c 2500) (between-1500-2500 c)]
    [else (greater-than-2500 c)]))

; Tests
(pay-back 400)
(pay-back 1400)
(pay-back 2400)
