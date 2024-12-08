#lang racket
(require examples)
;; String -> String
;;
;; Classifica um nome, de acordo com seu tamanho, em três tipos:
;; - curto, se possui 4 letras ou menos.
;; - medio, se possui 10 letras ou menos e mais de 4 letras.
;; - longo, se possui mais de 10 letras.

(examples
 (check-equal? (tamanho-nome "Ana") "curto")
 (check-equal? (tamanho-nome "Luis") "curto")
 (check-equal? (tamanho-nome "Jenna") "médio")
 (check-equal? (tamanho-nome "Gabrielle") "médio")
 (check-equal? (tamanho-nome "Maximiliano") "longo"))

(define (tamanho-nome nome)
  (cond
    [(<= (string-length nome) 4) "curto"]
    [(<= (string-length nome) 10) "médio"]
    [else "longo"]))

 