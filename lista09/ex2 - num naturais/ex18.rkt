#lang racket
(require examples)


(define (reduz-num-acc f base n)
  (define (iter i acc)
    (cond
      [(> i n) acc] 
      [else (iter (+ i 1) (f acc i))])) 
  (iter 1 base))  

;; Verifica se um número natural é perfeito, ou seja, se a soma dos seu divisores, exceto ele mesmo, é igual a ele. Por exemplo,
;; o número 6 é perfeito porque 6 = 1 + 2 + 3. 
(examples
(check-equal? (verificar-perfeito 6) #t)
(check-equal? (verificar-perfeito 10) #f)
(check-equal? (verificar-perfeito 28) #t))

(define (verificar-perfeito x)
  (define (soma-divisores acc i)
    (if (= (remainder x i) 0) 
        (+ acc i)             
        acc))                 
    (let ((soma (reduz-num-acc soma-divisores 0 (- x 1)))) 
    (= soma x))) 
