#lang racket

(define (discount orig disc)(- orig(*(/ orig 100.0) disc)))
(discount 10 5) 
(discount 29.90 50)
(discount 10 10)        