#lang racket

;Author Karle Sleith
;Write a function sod2 in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing a 1 where the number of
;1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
;For example:

(define(sod2 x y z)
  (sod2-helper x y z empty)
  )

;Logic for the maj fuction
(define (sod2-helper x y z lst)
  (if (null?(car x))
  lst
    (if (= (car x)(car y))
    (sod2-helper (cdr x)(cdr y) (cdr z) (cons (car x) lst))
      (if (=(car x)(car z))
       (sod2-helper (cdr x)(cdr y) (cdr z) (cons (car x) lst))
       (if (= (car y)(car z))
       lst
       lst
       )
      )
    )
  )
  )
;Test 1: Expected Output '(0 1 1 0 1 0 0 1)

> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
