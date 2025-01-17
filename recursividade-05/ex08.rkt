#lang racket

(require examples)

(examples
(check-equal? (verifica-possui-verdadeiro '(#t #t #t)) #t)
(check-equal? (verifica-possui-verdadeiro '(#f #t #t #t)) #t)
(check-equal? (verifica-possui-verdadeiro '(#f #f #f)) #f)
)

(define (verifica-possui-verdadeiro lst)
(cond
[(empty? lst) #f]
[else (or (first lst) (verifica-possui-verdadeiro(rest lst)))]
)
)
