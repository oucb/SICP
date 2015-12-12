(define (fex b n)
  (fast-expt b n 1))
(define (fast-expt b n a)
  (cond ((even n) (if (= n 0)
                      a
                      (fast-expt b (- n 2) (* a (square b)))))
        (else (* b (fast-expt b (- n 1) a)))))
(define (square x)
  
  
  (* x x))
(define (even n)
  (= (remainder n 2) 0))
