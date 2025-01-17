#lang racket
(require examples)

(define (reduz-num-acc f base n)
  (define (iter i acc)
    (cond
      [(> i n) acc] 
      [else (iter (+ i 1) (f acc))]))  
  (iter 1 base))  

;; Recebe como entrada um numero a(diferente de 0) e um numero natural n e calcula a^n
(examples
(check-equal? (potencia 4 2) 16)
(check-equal? (potencia 2 2) 4)
(check-equal? (potencia 1 0) 1)
)

(define (potencia a n)
  (reduz-num-acc (λ (acc) (* acc a)) 1 n))
