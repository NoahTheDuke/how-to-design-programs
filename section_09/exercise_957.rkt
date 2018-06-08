#lang racket

; a-list-of-numbers
; 1) an empty list
; 2) (cons n a-lon) where n is a number and a-lon is a-list-of-numbers

(define a-lon-0 empty)
(define a-lon-1 (cons 7 empty))
(define a-lon-2 (cons 7 (cons 2 empty)))
(define a-lon-3 (cons 7 (cons 2 (cons 5 empty))))
(define a-lon-4 (cons 7 (cons 2 (cons 5 (cons 1 empty)))))

; mean : list list -> number
(define (mean a-lon)
  (cond
    [(= 0 (len a-lon)) 'fuck-off]
    [else
      (/ (sum a-lon) (len a-lon))]))

; sum : list -> number
(define (sum a-lon)
  (cond
    [(empty? a-lon) 0.0]
    [else
      (+ (first a-lon) (sum (rest a-lon)))]))

; len : list -> number
(define (len a-lon)
  (cond
    [(empty? a-lon) 0]
    [else (+ 1 (len (rest a-lon)))]))

; tests
(mean a-lon-0)
(mean a-lon-1)
(mean a-lon-2)
(mean a-lon-3)
(mean a-lon-4)
