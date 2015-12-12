(define (reverse-item item)
  (if (null? item)
      '()
      (append (reverse-item (cdr item)) (list (car item)))))