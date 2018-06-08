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

; contains? : a symbol, list-of-symbols -> bool
(define (contains? a-sym a-los)
  (cond
    [(empty? a-los) false]
    [else
      (or (symbol=? a-sym (first a-los))
          (contains? a-sym (rest a-los)))]))

; Tests
(boolean=? true (contains? 'doll ex-1))
(boolean=? true (contains? 'doll ex-2))
(boolean=? false (contains? 'rosary ex-3))
(boolean=? false (contains? 'real ex-4))
(boolean=? true (contains? 'real ex-5))
(boolean=? false (contains? 'real ex-6))
