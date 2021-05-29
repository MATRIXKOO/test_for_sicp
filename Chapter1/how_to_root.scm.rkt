#lang sicp
(define (square x) (* x x)) 

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0000001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 100000000)
(sqrt 100)
(sqrt 0.000001)
(sqrt 0.01)
(sqrt 2)