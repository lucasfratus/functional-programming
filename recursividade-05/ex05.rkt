#lang racket

(require examples)

(examples
(check-equal? (remove-nao-a '("Alexandre" "Ana" "Luis")) '("Alexandre" "Ana"))
(check-equal? (remove-nao-a '("Alexandre" "Ana" "Afonso")) '("Alexandre" "Ana" "Afonso"))
(check-equal? (remove-nao-a '("Luis" "Lucas" "Lorena")) '())
(check-equal? (remove-nao-a '()) '())
)

(define (remove-nao-a lst)
(cond
[(empty? lst) '()]
[(equal? (string-ref (first lst) 0) #\A) (cons (first lst) (remove-nao-a (rest lst)))]
[else (remove-nao-a (rest lst))]))