#lang racket

; a-list-of-2-symbols:
; (cons x (cons y empty))
; where x and y are both symbols

(define ex-1 (cons 'doll (cons 'paper empty)))
(define ex-2 (cons 'paper (cons 'doll empty)))
(define ex-3 (cons 'human (cons 'being empty)))

; contains-2-doll?: a list-of-2-symbols -> bool
(define (contains-2-doll? a-lo2s)
  (or (eq? 'doll (first a-lo2s))
      (eq? 'doll (first (rest a-lo2s)))))

; Tests
(eq? true (contains-2-doll? ex-1))
(eq? true (contains-2-doll? ex-2))
(eq? false (contains-2-doll? ex-3))
