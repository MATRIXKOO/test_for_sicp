(define (double n)(* n 2))
(define (halve n)(/ n 2))
(define (fast_mul b n)
  (fast_mul_iter b n 0))


(define (fast_mul_iter b n product)
    (cond ((= n 0) product)
    ( (even? n) (fast_mul_iter (double b)(halve n) product))
    (else (fast_mul_iter b (- n 1) (+ product b)) ) 
    )
)

(fast_mul 2 3)