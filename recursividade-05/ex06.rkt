#lang racket
(require examples)

(examples
(check-equal? (remove-nulos '(1 2 0 4)) '(1 2 4))
(check-equal? (remove-nulos '(5 10 15 20 30)) '(5 10 15 20 30))
(check-equal? (remove-nulos '()) '())
)

(define (remove-nulos lst)
    (cond
        [(empty? lst) '()]
        [(= (first lst) 0) (remove-nulos(rest lst))]
        [else (cons (first lst) (remove-nulos(rest lst)))]))