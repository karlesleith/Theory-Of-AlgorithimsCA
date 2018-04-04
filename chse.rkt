#lang racket

;Author Karle Sleith
;Write a function chse in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing the elements of y in
;the positions where x is 1 and the elements of z otherwise. For example:


(define(chse x y z)
  (chse-helper x y z )
  )

;Logic for the chse fuction
(define (chse-helper x y z)
  (cond
    ((null? x) '())
    ((or(and(= (car y) 1)(=(car x) 1))(and(= (car y) 1)(=(car z) 1))) (cons 1 (chse-helper (cdr x) (cdr y) (cdr z))))
    ((or(and(= (car y) 1)(=(car x) 0))(and(= (car y) 1)(=(car z) 0))) (cons 0 (chse-helper (cdr x) (cdr y) (cdr z))))
    ((or(and(= (car y) 0)(=(car x) 1))(and(= (car y) 0)(=(car z) 1))) (cons 1 (chse-helper (cdr x) (cdr y) (cdr z))))
    ((or(and(= (car y) 0)(=(car x) 0))(and(= (car y) 0)(=(car z) 0))) (cons (car y) (chse-helper (cdr x) (cdr y) (cdr z))))
    (else (cons 0 (chse-helper (cdr x) (cdr y) (cdr z))))))
    
;Test 1: Expected Output '(0 1 0 1 0 0 1 1)
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))