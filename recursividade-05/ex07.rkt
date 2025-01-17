#lang racket

(require examples)

(examples
(check-equal? (verifica-todos-verdadeiros '(#t #t #t)) #t)
(check-equal? (verifica-todos-verdadeiros '(#f #t #t #t)) #f)
(check-equal? (verifica-todos-verdadeiros '(#f #f #f)) #f)
)

(define (verifica-todos-verdadeiros lst)
(cond
[(empty? lst) #t]
[else (and (first lst) (verifica-todos-verdadeiros(rest lst)))]
)
)

