#lang racket
; Author Karle Sleith
; define a fuction to check if a number is prime.
; x is our number of compairision, y is the division by 2, assuming Prime is greater than 2
(define (decide-prime n)
  (primeLoop n 2)
)

(define (primeLoop x y)
  (if (> y (/ x 2)); if 2 > x/2 return true, if not loop until it is/isn't *BRUTE FORCE*
      #true
  (if (= (modulo x y)0); if % is 0, return false
      #false
  (primeLoop x (+ y 1)); add 1 to y
      )
  )
)
(decide-prime 5); Test 1 #t
(decide-prime 6); Test 2 #f
(decide-prime 7); Test 3 #t