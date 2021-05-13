;; ex 1.22 
  
 (define (square x) (* x x)) 
  
 (define (smallest-divisor n) 
   (find-divisor n 2)) 
  
 (define (find-divisor n test-divisor) 
   (cond ((> (square test-divisor) n) n) 
         ((divides? test-divisor n) test-divisor) 
         (else (find-divisor n (+ test-divisor 1))))) 
  
 (define (divides? a b) 
   (= (remainder b a) 0)) 
  
 (define (prime? n) 
   (= n (smallest-divisor n))) 
  
 (define (timed-prime-test n) 
   (start-prime-test n (runtime))) 
  
 (define (start-prime-test n start-time) 
   (if (prime? n) 
       (report-prime n (- (runtime) start-time)))) 
  
 (define (report-prime n elapsed-time) 
   (newline) 
   (display n) 
   (display " *** ") 
   (display elapsed-time)) 
  
 (define (search-for-primes lower upper) 
   (define (iter n) 
     (cond ((<= n upper) (timed-prime-test n) (iter (+ n 2))))) 
   (iter (if (odd? lower) lower (+ lower 1)))) 
  
 (search-for-primes 1000 1019)       ; 1e3 
 (search-for-primes 10000 10037)     ; 1e4 
 (search-for-primes 100000 100043)   ; 1e5 
 (search-for-primes 1000000 1000037) ; 1e6 
  
 ; As of 2008, computers have become too fast to appreciate the time 
 ; required to test the primality of such small numbers. 
 ; To get meaningful results, we should perform the test with numbers 
 ; greater by, say, a factor 1e6. 
 (newline) 
 (search-for-primes 1000000000 1000000021)       ; 1e9 
 (search-for-primes 10000000000 10000000061)     ; 1e10 
 (search-for-primes 100000000000 100000000057)   ; 1e11 
 (search-for-primes 1000000000000 1000000000063) ; 1e12 