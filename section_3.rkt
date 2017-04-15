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

; (define (profit ticket-price)
;   (- (revenue ticket-price)
;      (cost ticket-price)))

; (define (revenue ticket-price)
;   (* (attendees ticket-price) ticket-price))

; (define (cost ticket-price)
;   (* 1.50 (attendees ticket-price)))

; (define (attendees ticket-price)
;   (+ 120
;      (* (/ 15 0.10)
;         (- 5.0 ticket-price))))

; (profit 2) ; 285
; (profit 3) ; 630
; (profit 4) ; 675
; (profit 5) ; 420

; Exercise 3.2.1
(define cost-per-attendee 1.5)
(define attendee-ceiling 120)
(define attendee-increase-per-dollar (/ 15 0.10))
(define ticket-ceiling 5)

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

(define (cost ticket-price)
  (* cost-per-attendee (attendees ticket-price)))

(define (attendees ticket-price)
  (+ attendee-ceiling
     (* attendee-increase-per-dollar
        (- ticket-ceiling ticket-price))))

; Exercise 3.3.1
; Conversion from Imperial to Metric

; (define cm-in-inch 2.54)
; (define inches-in-foot 12)
; (define feet-in-yard 3)
; (define yards-in-rod 5.5)
; (define rods-in-furlong 40)
; (define furlongs-in-mile 8)

; (define (inch-to-cm inches)
;   (* inches cm-in-inch))

; (define (foot-to-inch feet)
;   (* feet inches-in-foot))

; (define (yard-to-foot yards)
;   (* yards feet-in-yard))

; (define (rod-to-yard rods)
;   (* rods yards-in-rod))

; (define (furlong-to-rod furlongs)
;   (* furlongs rods-in-furlong))

; (define (mile-to-furlong miles)
;   (* miles furlongs-in-mile))

; (define (foot-to-cm feet)
;   (inch-to-cm (foot-to-inch feet)))

; (define (yard-to-cm yards)
;   (inch-to-cm (foot-to-inch (yard-to-foot yards))))

; (define (rod-to-inch rods)
;   (foot-to-inch (yard-to-foot (rod-to-yard rods))))

; (define (mile-to-feet miles)
;   (yard-to-foot (rod-to-yard (furlong-to-rod (mile-to-furlong miles)))))

; Exercise 3.3.2

(define TAU 6.28318)

(define (radius-of-disk r)
  (* (/ TAU 2)
     (* r r)))

(define (volume-cylinder radius height)
  (* (radius-of-disk radius) height))

(volume-cylinder 3 10) ; ~= 282.74
