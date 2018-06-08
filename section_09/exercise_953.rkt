#lang racket

; a-list-of-numbers:
; 1) an empty list
; 2) (cons n a-lon) where n is a num and a-lon is a-list-of-numbers

(define a-lon-0 empty)
(define a-lon-1 (cons .75 empty))
(define a-lon-2 (cons .75 (cons 2.0 empty)))
(define a-lon-3 (cons .75 (cons .95 (cons .25 empty))))
(define a-lon-4 (cons .75 (cons .2 (cons 10 (cons 5.5 empty)))))

; dollar-store?: upper-limit, a-lon -> number
(define (dollar-store? upper-limit a-lon)
  (cond
    [(empty? a-lon) #t]
    [(number? (first a-lon))
     (cond
       [(< (first a-lon) upper-limit) (dollar-store? upper-limit (rest a-lon))]
       [else #f])]
    [else #f]))

; Tests
(boolean=? #t (dollar-store? 1.0 a-lon-0))
(boolean=? #t (dollar-store? 1.0 a-lon-1))
(boolean=? #t (dollar-store? 5.0 a-lon-2))
(boolean=? #f (dollar-store? 0.5 a-lon-3))
(boolean=? #t (dollar-store? 100 a-lon-4))
