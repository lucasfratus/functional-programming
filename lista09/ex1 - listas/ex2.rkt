#lang racket
(require examples)

;; Calcula o produto dos elementos de uma lista de números
(examples
 (check-equal? (produto-lista '()) 1)
 (check-equal? (produto-lista '(1 2 3)) 6)
 (check-equal? (produto-lista '(2 0 4)) 0))

(define (produto-lista lst)
  (foldl * 1 lst))

;; A implementação "manual" da recursividade foi eliminada, deixando o código mais compreensível e mais fácil de ler.
;; O acumulador tem  a função de armazenar o produto da lista à medida que ela é percorrida.