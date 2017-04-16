#lang racket

; profit : number -> number
; Calculate total profit of a showing
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

; revenue : number -> number
; Calculate the total revenue for a showing
(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

; cost : number -> number
; Calculate the cost per attendee
(define (cost ticket-price)
  (* 1.50 (attendees ticket-price)))

; attendees : number ->
; Calculate the number of attendees for a given ticket price
(define (attendees ticket-price)
  (+ 120
     (* (/ 15 0.10)
        (- 5.0 ticket-price))))

; Tests
(profit 3.0) ; 630
(profit 4.0) ; 675
(profit 5.0) ; 420
