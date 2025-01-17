#lang racket
(require examples)

(examples
(check-equal? (tamanho-maior '("lorem" "ipsum" "dolor")) 5)
(check-equal? (tamanho-maior '("1" "11" "102")) 3)
(check-equal? (tamanho-maior '("oi")) 2)
(check-equal? (tamanho-maior '("")) 0)

)

(define (tamanho-maior lst)
(cond
[(empty? (rest lst)) (string-length(first lst))]
[else (max (string-length (first lst)) (tamanho-maior(rest lst)))]))