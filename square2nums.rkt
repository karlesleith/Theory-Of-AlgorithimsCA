#lang racket
;Author Karle Sleith
;Test to how to squares in racket in relation to question 10

; muliply
(define (mul x y)
(* x y)

)

;Square the Distance between num1 and num 2
(define (sqrDist x y)
(* (- x y) (- x y)) 
)


(define (e x y)

;E=
(*(- x y) (- x y)) 

)

;Test Outcome =  13
(mul 4 3)

; Test Outcome = 16
(e 4.5 1.1)
