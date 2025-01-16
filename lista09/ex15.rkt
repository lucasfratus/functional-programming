#lang racket
(require examples)
(define (reduz-num-acc f base n)
  (define (iter i acc)
    (cond
      [(> i n) acc]  ; Quando i for maior que n, retornamos o acumulador
      [else (iter (+ i 1) (f i acc))]))  ; Caso contrário, aplicamos f no próximo número e acumulamos
  (iter 1 base))  ; Começamos de 1, com o valor base


(examples
(check-equal? (produto-1-ate-n 4) 24)
(check-equal? (produto-1-ate-n 1) 1)
)
(define (produto-1-ate-n n)
  (reduz-num-acc * 1 n))