#lang racket

;Author Karle Sleith
;Write a function maj in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing a 1 where two or more
;of x, y and z contain 1’s, and 0 otherwise. For example:


;maj fuction
(define(maj x y z)
  (maj-helper x y z )
  )


;If first the list is null, we print out a null list;
;If the corrisponding 2 elements of the 2 of the 3 list are equal, then we push create ourselves
;a new list that is made up the heavier weighted elements

;Logic for the maj fuction
(define (maj-helper x y z)
  (cond
    ((null? x) '())
    ((= (car x) (car y)) (cons (car x) (maj-helper (cdr x) (cdr y) (cdr z))))
    ((= (car x) (car z)) (cons (car x) (maj-helper (cdr x) (cdr y) (cdr z))))
    (else (cons (car y) (maj-helper (cdr x) (cdr y) (cdr z))))))
    
;Test 1: Expected Output '(0 0 0 1 0 1 1 1)
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))