(define (deep-reverse x)
  (cond ((null? x)'())
        ((pair? (car x))
         (append (deep-reverse (cdr x))
                 (list (deep-reverse (car x)))))        
        (else 
         (append (deep-reverse (cdr x))
                      (list (car x))))))