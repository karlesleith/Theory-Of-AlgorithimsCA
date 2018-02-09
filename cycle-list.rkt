#lang racket
;Author Karle Sleith
;Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
;list as input and returns the list cyclically shifted one place to the left. The second
;is called rcycle, and it shifts the list cyclically shifted one place to the right.

;Fuctions to shift number one space to the left
(define (lcycle lst)
  (lcycle-helper (car lst)(cdr lst))
)
;Function to shift number one space to the right
(define (rcycle lst)
  (rcycle-helper (car lst)(cdr lst))
  )
;function that does the logic for lcycle
;What is done here is it takes the first number of the list and added it to the end,
;giving the apperence of moving one space to the left
(define (lcycle-helper x lst)
(append  lst (list x))
  )
;fucntion that does logic for rcycle
; What I do here is that I have a baseline condition when it reaches the number 5 to cut it out and append
;append it to the start of the list, what I relised was that when I keep cutting; it discards the numbers,
; so in my else statement I append the list back together, but adding the rest to the end.
; I want to update the fucntion so that if it is a number other than 5 it will still work
(define (rcycle-helper x lst)
(cond [(= x 5) (append (list x) lst)]
      [else
       ; Keep everything we have, just push it to the back of the list
       (rcycle-helper (car lst) (cdr(append lst (list x)))) 
      ]
  )
  )



;Test 1
(lcycle (list 1 2 3 4 5))
;Test 2
(rcycle (list 1 2 3 4 5))

