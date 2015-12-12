(define (f m n)
  (cond ((= n 1) 1)
        ((= m n) 1)
        (else (+ (f (- m 1) (- n 1)) (f (- m 1) n)))))