(define (reverse-iter sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence))
(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest)) (cdr rest))))
  (iter initial sequence))