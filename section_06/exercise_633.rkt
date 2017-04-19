#lang racket

(define-struct jet (designation acceleration top-speed range))

; within-range : jet number -> boolean
(define (within-range j d)
  (>= (jet-range j) d))

; reduce-range : jet -> jet
(define (reduce-range j)
  (make-jet
    (jet-designation j)
    (jet-acceleration j)
    (jet-top-speed j)
    (* (jet-range j) 0.8)))

(define new-jet (jet 'f22 50 500 1000))
(within-range new-jet 800)
(within-range new-jet 1000)
(within-range new-jet 1200)

(jet-range (reduce-range new-jet))
