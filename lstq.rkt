#lang racket

;Author Karle Sleith
;Write a function lstq in Racket that takes as arguments two lists l and m of equal
;length and containing numbers. It should return d, the distance given by the sum of
;the square residuals between the numbers in the lists:
;This means take the ith element of m from the ith element of l and square the result
;for all i. Then add all of those to get d. For example:

;E=
;(*(-(car l) (car m)) ((-(car l) (car m))))

(define (lstq x y) 
    (lstq-helper x y 0)
)

; The formula to determine the distance and sqaure it
(define (e x y)
;E=
(*(- x y) (- x y)) 
)

(define(lstq-helper l m lst)
;(cons l (cons m null))
   (cond
   [(null? l) lst]
   [else (+ (e (car l)(car m))(lstq-helper (cdr l) (cdr m) lst))]
   )
)

;Test 1: Expected Output = 54.61
; first list is l, 2nd list is m
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
