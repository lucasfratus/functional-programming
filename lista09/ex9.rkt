#lang racket
(require examples)

; Devolve o ultimo elemento de uma lista não vazia de números

(examples
 (check-equal? (devolve-ultimo '(1 2 3 4)) 4)
 (check-equal? (devolve-ultimo '(3 2 4 -2)) -2)
 (check-equal? (devolve-ultimo '(-10.5)) -10.5)
 (check-equal? (devolve-ultimo '(2.4 2.1 2.0)) 2.0))

(define (devolve-ultimo lst)
  (foldl (λ (x acumulador) x) '() lst))