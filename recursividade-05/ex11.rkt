#lang racket
(require examples)

(examples
(check-equal? (nao-decrescente? '(2 4 0)) #f)
(check-equal? (nao-decrescente? '(2 2 3)) #t)
(check-equal? (nao-decrescente? '(2 1 0)) #f)
(check-equal? (nao-decrescente? '(2 2 1)) #f)
(check-equal? (nao-decrescente? '(2 3 4)) #t))

(define (nao-decrescente? lst)
    (cond
        [(empty? lst) #t]
        [(empty? (rest lst)) #t]
        [(<= (first lst) (first(rest lst))) (nao-decrescente? (rest lst))]
        [else #f]))