(define (square-tree item)
  (cond ((null? item) '())
        ((not (pair? item)) (square item))
        (else (cons (square-tree (car item))
              (square-tree (cdr item))))))
(define (square x)
  (* x x))
;if don't define that what to do at the time when the list is empty,
;the square fuction will give an error
      