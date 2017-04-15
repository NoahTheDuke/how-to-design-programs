#lang br

; 3.1 Composing Functions
; As given:

; (define (profit ticket-price)
;   (- (revenue ticket-price)
;      (cost ticket-price)))

; (define (revenue ticket-price)
;   (* (attendees ticket-price) ticket-price))

; (define (cost ticket-price)
;   (+ 180
;      (* 0.04 (attendees ticket-price))))

; (define (attendees ticket-price)
;   (+ 120
;      (* (/ 15 0.10)
;         (- 5.0 ticket-price))))

; (profit 2) ; 937.2
; (profit 3) ; 1063.2
; (profit 4) ; 889.2
; (profit 5) ; 415.2

; Exercise 3.1.4

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

(define (cost ticket-price)
  (* 1.50 (attendees ticket-price)))

(define (attendees ticket-price)
  (+ 120
     (* (/ 15 0.10)
        (- 5.0 ticket-price))))

(profit 2) ; 285
(profit 3) ; 630
(profit 4) ; 675
(profit 5) ; 420
