#lang racket
(require examples)

; Cria uma nova lista, removendo todos os inteiros nulos de uma lista de inteiros

(examples
 (check-equal? (remove-nulos '(1 3 0 4)) '(1 3 4))
 (check-equal? (remove-nulos '(0)) '())
 (check-equal? (remove-nulos '(1 2 3)) '(1 2 3)))

(define (remove-nulos lst)
  (foldl (λ (x acumulador) 
           (if (= x 0)
               acumulador (cons x acumulador))) 
         '() lst))

;; O acumulador em remove-nulos tem a função de contruir a nova lista(sem os nulos). Os elementos que não
;; sao 0 sao adicionados ao acumulador.