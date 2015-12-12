(define (fix-point f first-guess)
  (define (try guess)
    (let ((next (f guess)))
      (display next)
      (newline)
      (if (close-enough? next guess)
          next
          (try next))))
  (try first-guess))
(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) 0.00001))
(define average-f
  (lambda (x) (/ (+ x (/ (log 1000) (log x))) 2)))

  