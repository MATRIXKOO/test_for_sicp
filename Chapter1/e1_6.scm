(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))
(new-if (= 1 1) 1 2)



#|simple to answer , it is like e1_5 it is applicate-order , so they take
same problem
|#
