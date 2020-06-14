(define (square x)
    (* x x ))
(define (improve guess x)
(/ (+ (/ x (square guess)) (* 2 guess)) 3)) 
(define (good-enough? guess x) 
   (= (improve guess x) guess)) 
  
 (define (3rt-iter guess x) 
   (if (good-enough? guess x) 
       guess 
       (3rt-iter (improve guess x) x))) 
(define (3root x)
    (3rt-iter 1.1 x))

;test
(3root 1000)
(3root 0.001)
(3root 0)
