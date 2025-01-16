#lang racket

(require examples)

;; Lista -> Booleano
;; Verifica se uma lista de números está em ordem não decrescente
(examples
    (check-equal? (non-decreasing? (list 2 3 4)) 0)
    (check-equal? (non-decreasing? (list 2 1 0)) 1))



(define (non-decreasing? lst)
  (if (empty? lst)
      #t  ; Caso base 1: lista vazia está em ordem
      (foldl
       (λ (current acc)
         (and (car acc)                         ; Verifica se a ordem foi mantida até agora
              (<= (cdr acc) current)            ; Verifica se o último número é ≤ ao atual
              (cons current #t)))               ; Atualiza o último número
       (cons (car lst) #t)                      ; Inicializa acumulador com o 1º elemento
       (cdr lst))))                             ; Itera sobre o restante da lista
