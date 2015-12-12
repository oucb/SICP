(define (append-item seq1 seq2)
  (accumulate cons seq2 seq1))
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))