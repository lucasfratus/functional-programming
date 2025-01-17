#lang racket
(require examples)

(examples
(check-equal? (divisores-menores 10 5) '(5 1))
(check-equal? (divisores-menores 3 7) '(1))
(check-equal? (divisores-menores 5 10) '(5 2 1)))


(define (divisores-menores n x)
  (cond
    [(= n 0) '()] 
    [(= (remainder x n) 0) 
     (cons n (divisores-menores (- n 1) x))]
    [else (divisores-menores (- n 1) x)]))