(define (search f a b)
  (define (search-point neg-point pos-point)
    (let ((neg-point a)
          (pos-point b)
          (midpoint (average neg-point pos-point)))
      (if (close-enough? neg-point pos-point)
          midpoint
          (let ((test-value (f midpoint)))
            (cond ((negative? midpoint) (search f midpoint b))
                  ((posative? midpoint) (search f a midpoint))
                  (else midpoint)))))))
(define (average m n)
  (/ (+ m n) 2))
(define (close-point? m n)
  (< (abs (- m n)) 0.001))

        
  