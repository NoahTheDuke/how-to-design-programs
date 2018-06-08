#lang racket

; a-list-of-numbers
; 1) an empty list
; 2) (cons n a-lon) where n is a number and a-lon is a-list-of-numbers

(define a-lon-0 empty)
(define a-lon-1 (cons 7 empty))
(define a-lon-2 (cons 7 (cons 2 empty)))
(define a-lon-3 (cons 7 (cons 2 (cons 5 empty))))
(define a-lon-4 (cons 7 (cons 2 (cons 5 (cons 0 empty)))))

; convert : list -> number
(define (convert a-lon)
  (cond
    [(empty? a-lon) 0]
    [else (+ (first a-lon) (* 10 (convert (rest a-lon))))]))

; Tests
(eqv? 0 (convert a-lon-0))
(eqv? 7 (convert a-lon-1))
(eqv? 27 (convert a-lon-2))
(eqv? 527 (convert a-lon-3))
(eqv? 527 (convert a-lon-4))

; check-guess-for-list : number list -> symbol
; Build a number from list, compare against target, return symbol
(define (check-guess-for-list target guess)
  (check-guess target (convert guess)))

(define (check-guess target guess)
  (cond
    [(> target guess) 'too-small]
    [(= target guess) 'parfait]
    [(< target guess) 'too-large]))

; Tests
(check-guess-for-list 0 a-lon-0)
(check-guess-for-list 10 a-lon-1)
(check-guess-for-list 20 a-lon-2)
(check-guess-for-list 100 a-lon-3)
(check-guess-for-list 1000 a-lon-4)
