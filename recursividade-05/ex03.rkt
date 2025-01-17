#lang racket
(require examples)


(examples
(check-equal? (conta-num '(1 4 5)) 3)
(check-equal? (conta-num '(1)) 1)
(check-equal? (conta-num '(2 1))2))

(define (conta-num lst)
(cond
[(empty? (rest lst)) 1]
[else (add1 (conta-num(rest lst)))]))