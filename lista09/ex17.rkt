#lang racket
(require examples)

(define (reduz-num-acc f base n)
  (define (iter i acc)
    (cond
      [(> i n) acc] 
      [else (iter (+ i 1) (f acc i))])) 
  (iter 1 base))  


(examples
(check-equal? (divisores-menores-ou-iguais 4 4) '(4 2 1))
(check-equal? (divisores-menores-ou-iguais 13 7) '(7 1))
(check-equal? (divisores-menores-ou-iguais 8 4) '(4 2 1)))


(define (divisores-menores-ou-iguais n x)
  (reduz-num-acc
    (λ (acc i)
      (if (= (remainder x i) 0)
          (cons i acc)  
          acc))         
    '() n))


