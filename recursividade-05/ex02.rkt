#lang racket

(require examples)

(examples
(check-equal? (produto-lst '(1 1)) 1)
(check-equal? (produto-lst '(2 3)) 6)
(check-equal? (produto-lst '(2 3 2)) 12)
(check-equal? (produto-lst '(0 4 5)) 0)
(check-equal? (produto-lst '()) 1)
)

(define (produto-lst lst)
(cond
    [(empty? lst) 1]
    [else 
    (* (first lst) (produto-lst (rest lst)))]))