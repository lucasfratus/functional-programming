#lang racket
(require examples)
;; Determine a quantidade de elementos presentes em uma lista, ignorando o primeiro elemento.
(examples
 (check-equal? (conta-ignora-primeiro '(1 2 3 4 5)) 4)
 (check-equal? (conta-ignora-primeiro '(2)) 0)
 (check-equal? (conta-ignora-primeiro '(1,2)) 1))

 (define (conta-ignora-primeiro lst)
   (foldl (λ (x acumulador) (+ 1 acumulador)) 0 (cdr lst)))

;; O foldl simplifica a contagem de elementos da lista e o acumulador é responsável por manter o número de elementos da lista, excluindo o primeiro.
;; Isso possibilita a não utilização de funções auxiliares.