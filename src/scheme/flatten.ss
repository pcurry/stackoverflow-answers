(define (list-glue left-list right-list)
  (cond
    ((null? left-list) right-list)
    (else (cons (car left-list) (list-glue (cdr left-list) right-list)))))
    
(define (convert-to-list s)
  (cond 
    ((null? s) '())
    ((not (list? s)) (cons s (quote ())))
    ((not (list? (car s))) (cons (car s) (convert-to-list (cdr s))))
    (else 
     (list-glue 
      (convert-to-list (car s))
      (convert-to-list (cdr s))))))
    
