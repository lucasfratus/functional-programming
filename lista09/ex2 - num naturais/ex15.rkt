#lang racket
(require examples)

(define (reduz-num-acc f base n)
  (define (iter i acc)
    (cond
      [(> i n) acc]  
      [else (iter (+ i 1) (f i acc))]))  
  (iter 1 base))  

;; Calcula o produto de todos os números de 1 até um inteiro n
(examples
(check-equal? (produto-1-ate-n 4) 24)
(check-equal? (produto-1-ate-n 1) 1)
)
(define (produto-1-ate-n n)
  (reduz-num-acc * 1 n))