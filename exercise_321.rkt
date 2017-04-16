#lang racket

; Constants
(define INITIAL-COST 180)
(define COST-PER-ATTENDEE 0.04)
(define ATTENDEE-CEILING 120)
(define ATTENDEE-INCREASE-PER-DOLLAR (/ 15 0.10))
(define TICKET-CEILING 5)

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
  (+ INITIAL-COST
      (* COST-PER-ATTENDEE (attendees ticket-price))))

; attendees : number ->
; Calculate the number of attendees for a given ticket price
(define (attendees ticket-price)
  (+ ATTENDEE-CEILING
     (* ATTENDEE-INCREASE-PER-DOLLAR
        (- TICKET-CEILING ticket-price))))

; Tests
(profit 3.0) ; 1063.2
(profit 4.0) ; 889.2
(profit 5.0) ; 415.2
