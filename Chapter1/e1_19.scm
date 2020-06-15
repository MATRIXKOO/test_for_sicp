(define (fib n)
(fib-iter 1 0 0 1 n))


(define (q_star p q)
    (+ (* 2 (* p q)) (* q q) ))
(q_star 1 2)
(define (p_star p q)
    (+ (* p p) (* q q)))

(q_star 1 2)
(p_star 1 2)
(define (fib-iter a b p q count)
(cond ((= count 0) b)
((even? count)
(fib-iter a
b
(p_star p q)
(q_star p q)
(/ count 2)))
(else (fib-iter (+ (* b q) (* a q) (* a p))
(+ (* b p) (* a q))
p
q
(- count 1)))))

(fib 4)