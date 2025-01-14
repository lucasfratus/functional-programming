#lang racket
(require examples)

;; Remove todas as strings que não começam com a letra "a" de uma lista de strings

(examples
 (check-equal? (filtra-comecam-a '("Abacaxi" "Maça" "Laranja" "Abacate")) '("Abacate" "Abacaxi"))
 (check-equal? (filtra-comecam-a '("Arvore")) '("Arvore"))
 (check-equal? (filtra-comecam-a '("abacaxi")) '())
 (check-equal? (filtra-comecam-a '("carro")) '()))


(define (filtra-comecam-a lst)
  (foldr (λ (str acc)
           (if (string-prefix? "a" str)  ; Verifica se a string começa com "A"
               (cons str acc)           ; Se sim, adiciona a string ao acumulador
               acc))                    ; Se não, ignora a string
         '()  ; Acumulador inicial: lista vazia
         lst))  ; Lista de entrada



