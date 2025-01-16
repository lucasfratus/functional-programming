#lang racket
(require examples)
;; Lista -> Lista
;; Recebe uma lista A como entrada e devolve uma lista B com os mesmos elementos da lista A, só que com a
;; ordem contrária
(examples
    (check-equal? (inverter-lista '(1 2 3)) '(3 2 1))
    (check-equal? (inverter-lista '()) '())
    (check-equal? (inverter-lista '(1)) '(1))
    (check-equal? (inverter-lista '(2 2)) '(2 2)))

(define (inverter-lista lst)
  (foldl (lambda (x acumulador) (cons x acumulador)) '() lst))

