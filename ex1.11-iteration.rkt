(define (f n)
  (cond ((< n 0) 0)
        ((< n 3) n)
        (else (f-iter 0 1 2 n))))
(define (f-iter a b c counter)
  (if (< counter 3)
      c
      (f-iter b c (+ (* 3 a) (* 2 b) c) (- counter 1))))