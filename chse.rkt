#lang racket

;Author Karle Sleith
;Write a function chse in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing the elements of y in
;the positions where x is 1 and the elements of z otherwise. For example:


(define(chse x y z)
  (chse-helper x y z empty)
  )

;Logic for the chse fuction
(define (chse-helper x y z lst)
  (if (null?(car x))
  lst
    (if (= (car x)(car y))
    (chse-helper (cdr x)(cdr y) (cdr z) (cons (car x) lst))
      (if (=(car x)(car z))
       (chse-helper (cdr x)(cdr y) (cdr z) (cons (car x) lst))
       (if (= (car y)(car z))
       lst
       lst
       )
      )
    )
  )
  )
;Test 1: Expected Output '(0 1 0 1 0 0 1 1)

> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
