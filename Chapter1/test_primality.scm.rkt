#lang sicp

(define (smallest_divisor n) (find_divisor n 2))

(define (is_divides a b) (= (remainder b a) 0))

(define (find_divisor n test_divisor)
(cond ((> (square test_divisor) n) n)
(is_divides test_divisor n) test_divisor)
(else (find_divisor n (+ test_divisor 1)))))

(define (prime_ n)
        (= n (smallest-divisor n)))
(prime_ 10)