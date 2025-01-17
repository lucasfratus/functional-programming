#lang racket
(require examples)

(examples
(check-equal? (produto-ate-n 4) 24)
(check-equal? (produto-ate-n 5) 120)
(check-equal? (produto-ate-n 2) 2)
)

(define (produto-ate-n n)
(cond
[(= n 0) 1]
[else (* n (produto-ate-n (sub1 n)))]))