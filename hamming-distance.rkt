#lang racket
;Author Karle Sleith
;Write a function hamming-distance in Racket that takes two lists and returns the
;number of positions in which they differ. For example:

;Function to call to call the Hamming Distance, It calls the def function that does the logic and
;adds a cnt for the hamming distnace to it
(define (hamming-distance x y)
  (hamming-helper x y 0)
)

; I start with is the remainer of the list null, if it is, the program is done and can 
; print the counter
; if the 2 elements of boths lists are equal, we can ignore it, it isn't needed as we want to know the
; diffrences.
; and finally if there is a difference, we pass that through recurssions and add 1 to the 
;counter 

(define(hamming-helper x y cnt)
;(cons x(cons y null))
 (cond
    ((null? (cdr x)) cnt)
    ((= (car x)(car y)) (hamming-helper (cdr x)(cdr y) cnt))
    (else (hamming-helper (cdr x)(cdr y) (+ 1 cnt)))
 ))

;Test 1: Expected output = 5
(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))