;recusive
(define (pascal row col)
  (cond
    ((= col 1) 1)
    ((= row col) 1)
    (else 
      (+ (pascal (- row 1) (- col 1))
         (pascal (- row 1) col)))))
;iter
(define (fact n)
  (define (fact-iter count product)
    (if (< n count) 
      product
      (fact-iter (+ 1 count) (* count product))))
  (if (= n 0) 
    1
    (fact-iter 1 1)))

(define (pascal2 row col)
  (/ (fact (- row 1))
     (fact (- col 1))
     (fact (- row col))))

;same val
(if ( = (pascal 1 1 ) ( pascal2 1 1))
    1
    0
)