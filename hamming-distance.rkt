#lang racket
(define(hamming-distance x y)
(hamming-helper x y)
  )

(define(hamming-helper x y)
 (if(null? x)
  0
  (+ (car x)(hamming-helper )))
  )
)
   


(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))