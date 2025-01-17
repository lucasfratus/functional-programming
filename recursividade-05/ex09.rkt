#lang racket

(require examples)

(examples
(check-equal? (devolve-ultimo '(1 2 3)) 3)
(check-equal? (devolve-ultimo '(0)) 0)
(check-equal? (devolve-ultimo '(4 2 5)) 5)
)

(define (devolve-ultimo lst)
(cond
[(empty? (rest lst)) (first lst)]
[else (devolve-ultimo (rest lst))]))