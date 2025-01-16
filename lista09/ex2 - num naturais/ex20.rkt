#lang racket
(require examples)
;; Adição, Subtração e Multiplicação


(define (reduz-num-acc f base n)
  (define (iter i acc)
    (cond
      [(> i n) acc] 
      [else (iter (+ i 1) (f acc i))])) 
  (iter 1 base))  


(examples
(check-equal? (mais 2 3) 5)
(check-equal? (mais 10 0) 10)
(check-equal? (mais 0 0) 0))  
(define (mais a b)
  (reduz-num-acc
    (λ (acc i) (add1 acc))  
    b a))  


(examples
(check-equal? (menos 4 1) 3)
(check-equal? (menos 2 3) -1)
(check-equal? (menos 10 0) 10)
(check-equal? (menos 0 0) 0)) 
(define (menos a b)
  (reduz-num-acc
    (λ (acc i) (sub1 acc)) 
    a b))


(examples
(check-equal? (vezes 2 3) 6)
(check-equal? (vezes 1 1) 1)
(check-equal? (vezes 10 0) 0)
(check-equal? (vezes 0 0) 0))
(define (vezes a b)
  (reduz-num-acc
    (lambda (acc i) (+ acc a))
    0 b))  