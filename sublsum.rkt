#lang racket
;Author Karle Sleith
;Write a function sublsum in Racket that takes a list (of integers) as input and returns
;a list of sublists of it that sum to zero. For this problem, you can use the
;combinations built-in function. Note the order of the sublists and their elements
;doesn’t matter

;Summing a pair
(define(sum l)
(if (empty? l)0
(+(car l)(sum (cdr l)))
)
)

(define(sublsum-helper l)
(cond 
    [(null? (car l)) (sublsum-helper (cdr l))]
    [(zero? (sum(car l))) (cons (car l) null)]
    [else (sublsum-helper(cdr l))])
)

(define (sublsum l)
(sublsum-helper (combinations l) )
)

;Testing the Sum procedure
;(sum (list 2 3 -5))

;(combinations (list 1 2 3 4 -5))
;Test 1: Expected Outcome = '((2 3 -5) (-5 1 4))
(sublsum (list 1 2 3 4 -5))
;(sublsum (list 1 2 3 4 5))