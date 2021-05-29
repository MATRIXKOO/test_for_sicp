#lang sicp

(define (square x) (* x x)) 

(define (fast-expt b n)
(cond ((= n 0) 1)
((even? n) (square (fast-expt b (/ n 2))))
(else (* b (fast-expt b (- n 1))))))


(define (expt b n)
(expt-iter b n 1))
(define (expt-iter b counter product)
(if (= counter 0)
product
(expt-iter b
(- counter 1)
(* b product))))

;(fast-expt 2 20) ; 0.097s
(expt 2 20) ; 0.102s
