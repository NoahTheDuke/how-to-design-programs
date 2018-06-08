#lang racket

; a-list-of-symbols:
; 1) an empty list
; 2) (cons s a-los) where s is a symbol and a-los is a-list-of-symbols

(define a-los-0 empty)
(define a-los-1 (cons 'paper empty))
(define a-los-2 (cons 'doll (cons 'paper empty)))
(define a-los-3 (cons 'paper (cons 'doll (cons 'antique empty))))
(define a-los-4 (cons 'paper (cons 'mache (cons 'antique (cons 'doll empty)))))
(define a-los-5 (cons 'human (cons 'being (cons 'real (cons 'hero (cons 'heck empty))))))

; a-list-of-numbers:
; 1) an empty list
; 2) (cons n a-lon) where n is a num and a-lon is a-list-of-numbers

(define a-lon-0 empty)
(define a-lon-1 (cons 1.00 empty))
(define a-lon-2 (cons 1.2 (cons 2.0 empty)))
(define a-lon-3 (cons 17.05 (cons 1.22 (cons 2.59 empty))))
(define a-lon-4 (cons 1 (cons 2 (cons 3 (cons 4 empty)))))
(define a-lon-5 (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 empty))))))

; how-many-symbols?: a-los -> number
(define (how-many-symbols? a-los)
  (cond
    [(empty? a-los) 0]
    [(symbol? (first a-los)) (+ 1 (how-many-symbols? (rest a-los)))]
    [else (rest a-los)]))

; how-many-numbers? a-lon -> number
(define (how-many-numbers? a-lon)
  (cond
    [(empty? a-lon) 0]
    [(number? (first a-lon)) (+ 1 (how-many-numbers? (rest a-lon)))]
    [else (rest a-lon)]))

; Tests
(eqv? 0 (how-many-symbols? a-los-0))
(eqv? 1 (how-many-symbols? a-los-1))
(eqv? 2 (how-many-symbols? a-los-2))
(eqv? 3 (how-many-symbols? a-los-3))
(eqv? 4 (how-many-symbols? a-los-4))
(eqv? 5 (how-many-symbols? a-los-5))

(eqv? 0 (how-many-numbers? a-lon-0))
(eqv? 1 (how-many-numbers? a-lon-1))
(eqv? 2 (how-many-numbers? a-lon-2))
(eqv? 3 (how-many-numbers? a-lon-3))
(eqv? 4 (how-many-numbers? a-lon-4))
(eqv? 5 (how-many-numbers? a-lon-5))
