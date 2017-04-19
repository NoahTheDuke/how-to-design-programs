#lang racket

(define l (cons 10 (cons 20 (cons 5 empty))))

(equal? (rest l) '(20 5))

(equal? (first (rest l)) 20)

(equal? (rest (rest l)) '(5))

(equal? (first (rest (rest l))) 5)
