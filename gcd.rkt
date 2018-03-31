#lang racket

(define (gcd a b)
    (if (< a b)
        (gcd b a)
        (if(= b 0)
        a   
        (gcd (modulo a b) b)
        )
    ) 
)

;Test 1 : Expected Output = 5
(gcd 25 20)

