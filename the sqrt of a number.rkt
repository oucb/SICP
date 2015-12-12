(define (sqrt-iter x n)
  (if (sqrt-equal x n)
      (sqrtx x n)
      (sqrt-iter x (sqrtx x n))))
(define (sqrtx x n)
  (/ (+ (/ x n) n) 2))
(define (sqrt-equal x n)
  (< (abs (- (* (sqrtx x n) (sqrtx x n)) x)) 0.0001))
  
