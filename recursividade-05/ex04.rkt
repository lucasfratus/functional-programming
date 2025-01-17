#lang racket
(require examples)

(examples
(check-equal? (converte-str-p-num '("1" "2" "3")) '(1 2 3))
(check-equal? (converte-str-p-num '()) '())
(check-equal? (converte-str-p-num '("10" "12" "0")) '(10 12 0)))

(define (converte-str-p-num lst)
(cond
[(empty? lst) '() ]
[else (cons (string->number (first lst)) (converte-str-p-num (rest lst)))]
)
)