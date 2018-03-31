#lang racket
;Author Karle Sleith
;Write a function hamming-distance in Racket that takes two lists and returns the
;number of positions in which they differ. For example:

(define(hamming-distance x y)
(hamming-helper x y 0)
  )

(define(hamming-helper x y cnt)
;(cons x(cons y null))
 (if (null? (or(car x) (car y))) 
 cnt 
 (if (= (car x) (car y))
 (hamming-helper (cdr x) (cdr y) (+ 1 cnt))

 ;(cons x(cons y null))
 )
 )
)

;Test 1: Expected output = 5
(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))