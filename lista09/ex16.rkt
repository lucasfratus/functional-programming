#lang racket
(require examples)

(define (reduz-num-acc f base n)
  (define (iter i acc)
    (cond
      [(> i n) acc]  ; Quando i for maior que n, retornamos o acumulador
      [else (iter (+ i 1) (f acc))]))  ; Aplica a operação f no acumulador
  (iter 1 base))  ; Começa de 1 com o valor base


(examples
(check-equal? (potencia 4 2) 16)
(check-equal? (potencia 2 2) 4)
(check-equal? (potencia 1 0) 1)
)

(define (potencia a n)
  (reduz-num-acc (lambda (acc) (* acc a)) 1 n))
