#lang racket

;Author Karle Sleith
;Write a function maj in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing a 1 where two or more
;of x, y and z contain 1’s, and 0 otherwise. For example:

(define(maj x y z)
  (maj-helper x y z empty)
  )

;Logic for the maj fuction
(define (maj-helper x y z lst)
  

  )
;Test 1: Expected Output '(0 0 0 1 0 1 1 1)
 
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))