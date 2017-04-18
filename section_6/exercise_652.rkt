#lang racket

; struct time:
;   (make-time H M S)
; where H, M, and S are numbers
(define-struct time (H M S))

; time->seconds : time -> number
(define (time->seconds t)
  (+
    (time-S t)
    (* 60 (time-M t))
    (* 60 60 (time-H t))))

; Tests
(define breakfast (make-time 7 25 31))
(define lunch (make-time 12 0 9))
(define dinner (make-time 6 15 0))
(define example (make-time 12 30 2))

(time->seconds breakfast)
(time->seconds lunch)
(time->seconds dinner)
(time->seconds example)
