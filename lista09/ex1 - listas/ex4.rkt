#lang racket
(require examples)

;; Cria uma lista de números a partir de uma lista de strings
(examples
 (check-equal? (strings-para-numeros '("1" "2" "3")) '(3 2 1))
 (check-equal? (strings-para-numeros '("100")) '(100))
 (check-equal? (strings-para-numeros '()) '()))

(define (strings-para-numeros lst)
  (foldl (λ (string acumulador) (cons (string->number string) acumulador)) '() lst))