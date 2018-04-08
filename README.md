# Theory-Of-AlgorithimsCA
Continuous Assessment relating to "Theory of Alogorithims" module, Final Year of Hons Software Development

During this module in place of a Project Assignment, we were required to regularly present Programming Tasks in Racket,
developed by us "from scratch", in the sense that we could only use **cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo)**.

## Racket
Racket is a general-purpose  functional programming language (born from the Scheme family) as well as the world’s first ecosystem for developing 
and deploying new languages

When we instantiate a racket program, we first declare the language **#lang racket** at the top of the text file,
and also gave the file the **.rkt** file extension, then we were ready to begin coding using the Racket language. 

## The Little Schemer
During the course, our lecturer referred us to the book *"The Little Schemer"* by Daniel P. Friedman, I referred to 
this book over the course of the module, to help develop my skills in functional programming.

*The notion that "thinking about computing is one of the most exciting things the human mind can do" sets
 both The Little Schemer (formerly known as The Little LISPer) and its new companion volume, The Seasoned Schemer, 
 apart from other books on LISP. The authors' enthusiasm for their subject is compelling as they present abstract 
 concepts in a humorous and easy-to-grasp fashion. Together, these books will open new doors of thought to anyone who 
 wants to find out what computing is really about. The Little Schemer introduces computing as an extension of arithmetic 
 and algebra; things that everyone studies in grade school and high school. It introduces programs as recursive functions 
 and briefly discusses the limits of what computers can do. The authors use the programming language Scheme, and interesting
 foods to illustrate these abstract ideas. The Seasoned Schemer informs the reader about additional dimensions of computing: 
 functions as values, change of state, and exceptional cases. The Little LISPer has been a popular introduction to LISP for
 many years. It had appeared in French and Japanese. The Little Schemer and The Seasoned Schemer are worthy successors and 
 will prove equally popular as textbooks for Scheme 
courses as well as companion texts for any complete introductory course in Computer Science.*


## Question 1 - decide-prime.rkt
Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
a single positive integer and return true if the number is a prime and false otherwise.
Call the function decide-prime.


## Question 2 - collatz-list.rkt
Write, from scratch, a function in Racket that takes a positive integer n0 as input
and returns a list by recursively applying the following operation, starting with the
input number. End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n0, the second element
is n1, and so on. 

## Question 3 - cycle-list.rkt
Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called rcycle, and it shifts the list cyclically shifted one place to the right.

## Question 4 -sumlsum.rkt
Write a function sublsum in Racket that takes a list (of integers) as input and returns
a list of sublists of it that sum to zero. For this problem, you can use the
combinations built-in function. Note the order of the sublists and their elements
doesn’t matter. 
## Question 5 - hamming-weight.rkt
Write a function hamming-weight in Racket that takes a list l as input and returns
the number of non-zero elements in it
## Question 6 - hamming-distance.rkt
Write a function hamming-distance in Racket that takes two lists and returns the
number of positions in which they differ.
## Question 7 - maj.rkt
Write a function maj in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where two or more
of x, y and z contain 1’s, and 0 otherwise. 
## Question 8 - chse.rkt
Write a function chse in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing the elements of y in
the positions where x is 1 and the elements of z otherwise.
## Question 9 - sod2.rkt
Write a function sod2 in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where the number of
1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
## Question 10 - lstq.rkt
![lstq algorithim](https://github.com/karlesleith/Theory-Of-AlgorithimsCA/blob/master/ScreenShots/lstq.jpg)
Write a function lstq in Racket that takes as arguments two lists l and m of equal
length and containing numbers. It should return d, the distance given by the sum of
the square residuals between the numbers in the lists: This means take the i
th element of m from the i
th element of l and square the result
for all i. Then add all of those to get d. 
**NB. I made allowance for the fact I rounded everything to 2 decimal places.**
