(define ( inc x)(+ x 1))
(define (dec x)(- x 1))

(define (add1 a b)
(if (= a 0) b (inc (add1 (dec a) b))))

(+ 4 5)
(inc (+ (dec 4) 5))
(inc (+ 3 5))
(inc (inc (+ (dec 3) 5)))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ (dec 2) 5))))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9   
;  recursive 


(define (add2 a b)
(if (= a 0) b (add2 (dec a) (inc b))))

(+ 4 5)
(+ (dec 4) (inc 5))
(+ 3 6)
(+ (dec 3) (inc 6))
(+ 2 7)
(+ (dec 2) (inc 7))
(+ 1 8)
(+ (dec 1) (inc 8))
(+ 0 9)
9



;iter

(add1 1 2 )
(add2 2 3 )
