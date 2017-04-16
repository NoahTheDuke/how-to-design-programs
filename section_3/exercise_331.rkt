#lang racket

; Constants
; Conversion from Imperial to Metric
(define CM-PER-INCH 2.54)
(define INCHES-PER-FOOT 12)
(define FEET-PER-YARD 3)
(define YARDS-PER-ROD 5.5)
(define RODS-PER-FURLONG 40)
(define FURLONGS-PER-MILE 8)

; inches->cm : number -> number
; Calculate centimeters in an inch
(define (inches->cm inches)
  (* inches CM-PER-INCH))

; feet->inches : number -> number
; Calculate inches in a feet
(define (feet->inches feet)
  (* feet INCHES-PER-FOOT))

; yards->feet : number -> number
; Calculate feet in a yard
(define (yards->feet yards)
  (* yards FEET-PER-YARD))

; rods->yards : number -> number
; Calculate yards in a rod
(define (rods->yards rods)
  (* rods YARDS-PER-ROD))

; furlongs->rod : number -> number
; Calculate rods in a furlong
(define (furlongs->rod furlongs)
  (* furlongs RODS-PER-FURLONG))

; miles->furlongs : number -> number
; Calculate furlongs in a miles
(define (miles->furlongs miles)
  (* miles FURLONGS-PER-MILE))

; feet->cm : number -> number
; Calculate centimeters in a feet
(define (feet->cm feet)
  (inches->cm (feet->inches feet)))

; yards->cm : number -> number
; Calculate centimeters in a yard
(define (yards->cm yards)
  (inches->cm (feet->inches (yards->feet yards))))

; rods->inches : number -> number
; Calculate inches in a rod
(define (rods->inches rods)
  (feet->inches (yards->feet (rods->yards rods))))

; miles->feet : number -> number
; Calculate feet in a miles
(define (miles->feet miles)
  (yards->feet (rods->yards (furlongs->rod (miles->furlongs miles)))))

; Tests
(printf "~a ~a\n" (inches->cm 1) 2.54)
(printf "~a ~a\n" (feet->inches 1) 12)
(printf "~a ~a\n" (yards->feet 1) 3)
(printf "~a ~a\n" (rods->yards 1) 5.5)
(printf "~a ~a\n" (furlongs->rod 1) 40)
(printf "~a ~a\n" (miles->furlongs 1) 8)
(printf "~a ~a\n" (feet->cm 1) 30.48)
(printf "~a ~a\n" (yards->cm 1) 91.44)
(printf "~a ~a\n" (rods->inches 1) 198.0)
(printf "~a ~a\n" (miles->feet 1) 5280.0)
