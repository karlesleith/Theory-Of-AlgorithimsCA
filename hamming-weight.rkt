#lang racket
;Author Karle Sleith
;Write a function hamming-weight in Racket that takes a list l as input and returns
;the number of non-zero elements in it

(define (hamming-weight l)
(hamming-helper l)
 )

;Logic for getting the hamming weight of a binary list
(define (hamming-helper l)
  (if(null? (cdr l))
  0
  (+ (car l)(hamming-helper(cdr l)))
  ))

      
;Test 1
(hamming-weight (list 1 0 1 0 1 1 1 0))