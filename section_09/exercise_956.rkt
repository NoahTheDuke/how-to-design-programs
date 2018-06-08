#lang racket

; a-list-of-numbers
; 1) an empty list
; 2) (cons n a-lon) where n is a number and a-lon is a-list-of-numbers

(define a-lon-0 empty)
(define a-lon-1 (cons 7 empty))
(define a-lon-2 (cons 7 (cons 2 empty)))
(define a-lon-3 (cons 7 (cons 2 (cons 5 empty))))
(define a-lon-4 (cons 7 (cons 2 (cons 5 (cons 1 empty)))))

(define a-lon-5 empty)
(define a-lon-6 (cons 2 empty))
(define a-lon-7 (cons 2 (cons 5 empty)))
(define a-lon-8 (cons 2 (cons 5 (cons 9 empty))))
(define a-lon-9 (cons 2 (cons 5 (cons 9 (cons 7 empty)))))

; delta : list list -> number
(define (delta inv-1 inv-2)
  (- (delta-helper inv-2) (delta-helper inv-1)))

; delta-helper : list -> number
(define (delta-helper a-lon)
  (cond
    [(empty? a-lon) 0]
    [else (+ (first a-lon) (* 10 (delta-helper (rest a-lon))))]))

; tests
(boolean=? #t (positive? (delta a-lon-0 a-lon-9)))
(boolean=? #t (positive? (delta a-lon-1 a-lon-8)))
(boolean=? #t (positive? (delta a-lon-2 a-lon-7)))
(boolean=? #f (positive? (delta a-lon-3 a-lon-6)))
(boolean=? #f (positive? (delta a-lon-4 a-lon-5)))
