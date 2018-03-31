#lang racket
;Author Karle Sleith
;Write, from scratch, a function in Racket that takes a positive integer n0 as input
;and returns a list by recursively applying the following operation, starting with the
;input number

;Helper method that does the logic
(define (collatz-list-helper x lst)
(cond  [(= x 1) (append  lst (list 1))] ; if the number is one add it to the list
         [(odd? x) ; if the number is odd, we use recursion and call the method again passing in a new value for x with the formula supplied
          (collatz-list-helper2 (+(* x 3)1)(append  lst (list x)))
         ]
         [else ; if the number is anything else we also pass it to the list, but using a diffrent forumla
          (collatz-list-helper2 (/ x 2)(append  lst (list x)))
          ]
         )
  )
  
;Alternate Way
(define (collatz-list-helper2 x lst)
  (cond  [(= x 1) (append  lst (list 1))] ; if the number is one add it to the list
         [(odd? x) ; if the number is odd, we use recursion and call the method again passing in a new value for x with the formula supplied
          (collatz-list-helper2 (+(* x 3)1)(append  lst (list x)))
         ]
         [else ; if the number is anything else we also pass it to the list, but using a diffrent forumla
          (collatz-list-helper2 (/ x 2)(append  lst (list x)))
          ]
         )
  )

;NB: We can pass the number into the start or the end of the list, depending on the order of our append function. Eg. Append (list x) lst

; We define the function to call, and pass in an empty list.
(define (collatz-list x)
  (collatz-list-helper x empty)
  )

;Test 1
(collatz-list 5)
;Test 2
(collatz-list 9)
;Test 3
(collatz-list 2)