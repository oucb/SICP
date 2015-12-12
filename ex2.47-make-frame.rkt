;; when the make-frame function is defined through the 'list'
(define (origin-frame frame)
  (car frame))
(define (edge1-frame frame)
  (cadr frame))
(define (edge2-frame frame)
  (caddr frame))
;; when the make-frame function is defined through the 'cons'
(define (origin-frame frame)
  (car frame))
(define (edge1-frame frame)
  (cadr frame))
(define (edge2-frame frame)
  (cons (caddr frame) (cdddr frame)))