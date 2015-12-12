(define (length-item sequence)
  (accumulate (lambda (x y)
                (if (null? y)
                    1
                    (+ 1 y)))
              0
              sequence))
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))