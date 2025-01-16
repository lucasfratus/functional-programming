#lang racket
(require examples)

; Cria uma nova lista, removendo todos os inteiros nulos de uma lista de inteiros

(examples
 (check-equal? (remove-nulos '(1 3 0 4)) '(1 3 4))
 (check-equal? (remove-nulos '(0)) '())
 (check-equal? (remove-nulos '(1 2 3)) '(1 2 3)))

(define (remove-nulos lst)
  (filter (λ (x) (not (= x 0))) lst))
