#lang sicp

(define (square x) (* x x)) 

(define (sumsquares x y) (+ (square x) (square y))) 

(define (sqsumlargest a b c) 
  (cond  
    ((and (>= a c) (>= b c)) (sumsquares a b)) 
    ((and (>= b a) (>= c a)) (sumsquares b c)) 
    ((and (>= a b) (>= c b)) (sumsquares a c)))) 
(sqsumlargest 1 2 3)
(sqsumlargest 2 3 4)