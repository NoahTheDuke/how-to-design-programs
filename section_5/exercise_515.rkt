#lang racket

; check-color : symbol symbol symbol symbol -> symbol
; Score guesses for a Mastermind-like game.
(define (check-color t1 t2 g1 g2)
  (cond
    [(and (guess-checker t1 g1) (guess-checker t2 g2)) 'Perfect]
    [(or (guess-checker t1 g1) (guess-checker t2 g2)) 'OneColorAtCorrectPosition]
    [(or (guess-checker t1 g2) (guess-checker t2 g1)) 'OneColorOccurs]
    [else 'NothingCorrect]))

; guess-checker : symbol symbol -> boolean
; Compare equality of two symbols
(define (guess-checker t g)
  (symbol=? t g))

; Tests
(check-color 'red 'blue 'red 'blue)
(check-color 'red 'blue 'red 'green)
(check-color 'red 'blue 'yellow 'blue)
(check-color 'red 'blue 'yellow 'red)
(check-color 'red 'blue 'blue 'green)
(check-color 'red 'blue 'yellow 'green)
