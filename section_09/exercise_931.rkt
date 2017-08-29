#lang racket

; a-list-of-symbols:
; 1) an empty list
; 2) (cons s a-los) where s is a symbol and a-los is a-list-of-symbols

(define ex-1 (cons 'doll (cons 'paper empty)))
(define ex-2 (cons 'paper (cons 'doll empty)))
(define ex-3 (cons 'paper (cons 'mache (cons 'antique (cons 'doll empty)))))
(define ex-4 (cons 'human (cons 'being empty)))
(define ex-5 (cons 'human (cons 'being (cons 'real (cons 'hero empty)))))
(define ex-6 empty)

; contains-doll?: a list-of-symbols -> bool
(define (contains-doll? a-los)
  (cond
    [(empty? a-los) false]
    [else
      (cond
        [(symbol=? (first a-los) 'doll) true]
        [else
          (contains-doll? (rest a-los))])]))

; Tests
(boolean=? true (contains-doll? ex-1))
(boolean=? true (contains-doll? ex-2))
(boolean=? true (contains-doll? ex-3))
(boolean=? false (contains-doll? ex-4))
(boolean=? false (contains-doll? ex-5))
(boolean=? false (contains-doll? ex-6))
