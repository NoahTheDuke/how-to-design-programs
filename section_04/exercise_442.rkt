#lang racket

; tax : number -> number
; Calculate the amount of taxes one owes on how much they earned.
(define (tax gross)
  (* gross
     (cond
       [(<= gross 240) 0]
       [(<= gross 480) 0.15]
       [else 0.28])))

; gross-pay : number -> number
; Calculate the gross pay an hourly worker makes at $12/hr
(define (gross-pay hours)
  (* hours 12))

; netpay : number -> number
; Calculate the net pay of an hourly worker after taxes
(define (netpay hours)
  (- (gross-pay hours)
     (tax (gross-pay hours))))

; Tests
(netpay 40)
