#lang racket

(define-struct posn (x y))

; distance-to-0 : posn -> number
; Return distance to origin point (0, 0) of a given posn (x, y)
(define (distance-to-0 pos)
  (sqrt
    (+ (expt (posn-x pos) 2)
       (expt (posn-y pos) 2))))

; Tests
(distance-to-0 (make-posn 3 4))
(distance-to-0 (make-posn (* 2 3) (* 2 4)))
(distance-to-0 (make-posn 12 (- 6 1)))
