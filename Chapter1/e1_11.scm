(define (fi n) 
    (f-iter 0 1 2 n))
(define (f-iter a b c count)
  (if ( = 0 count) 
      a
      (f-iter b 
              c  
              (+ c (* 2 b) (* 3 a))
              (- count 1))))
(fi 4)


(define (fr n)
    (if(< n 3)
        n
    (+
    (fr (- n 1)  ) 
    ( * (fr (- n 2 )  )     2) 
    ( * (fr (- n 3)   )     3)
    )
    )
)
(fr 4)