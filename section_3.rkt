#lang br

; 3.1 Composing Functions

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

(define (cost ticket-price)
  ( + 180
      (* 0.04 (attendees ticket-price))))

(define (attendees ticket-price)
  (+ 120
     (* (/ 15 0.10)
        (- 5.0 ticket-price))))
