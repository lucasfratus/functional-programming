#lang racket

(require examples)

;; Retorna o tamanho da string de maior tamanho entre uma lista de strings

(examples
 (check-equal? (tamanho-max-lst-string '("Lucas" "Ana" "Luis")) 5)
 (check-equal? (tamanho-max-lst-string '("Joao" "Caio" "Luis")) 4)
 (check-equal? (tamanho-max-lst-string '("Ana")) 3)
 (check-equal? (tamanho-max-lst-string '()) 0))


(define (tamanho-max-lst-string lst)
  (foldl (λ (string acumulador) (max (string-length string) acumulador)) 0 lst))