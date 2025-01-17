#lang racket
(require examples)

(examples
(check-equal? (potencia 2 3) 8)
(check-equal? (potencia 3 1) 3)
(check-equal? (potencia 5 2) 25)
)

(define (potencia a n)
(cond
[(= n 0) 1]
[else (* a (potencia a (- n 1)))]))