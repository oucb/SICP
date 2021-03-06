(define (map-item p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) '() sequence))
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))