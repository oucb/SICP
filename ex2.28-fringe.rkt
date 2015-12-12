(define (fringe item)
  (cond ((null? item) '())
        ((pair? (car item))
         (append (fringe (car item)) (fringe (cdr item))))
        (else
         (cons (car item) (fringe (cdr item))))))
      
      
      