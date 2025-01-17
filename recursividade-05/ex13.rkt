#lang racket
(require examples)

(examples
(check-equal? (contar-positivos '(1 -2 -3)) 1)
(check-equal? (contar-positivos '(1 2 )) 2)
(check-equal? (contar-positivos '(-1 -2 -3)) 0)
(check-equal? (contar-positivos '(1 5 3 4)) 4)
(check-equal? (contar-positivos '()) 0))

(define (contar-positivos lst)
(cond
[(empty? lst) 0]
[(> (first lst) 0) (+ 1 (contar-positivos (rest lst)))]
[else (contar-positivos(rest lst))]))


(examples
(check-equal? (contar-negativos '(1 -2 -3)) 2)
(check-equal? (contar-negativos '(1 2)) 0)
(check-equal? (contar-negativos '(-1 -2 -3)) 3)
(check-equal? (contar-negativos '()) 0)
(check-equal? (contar-negativos '(1 2)) 0))

(define (contar-negativos lst)
(cond
[(empty? lst) 0]
[(> 0 (first lst)) (+ 1 (contar-negativos (rest lst)))]
[else (contar-negativos(rest lst))]))

(examples
(check-equal? (mais-positivos-que-negativos? '(1 -2 -3)) #f)
(check-equal? (mais-positivos-que-negativos? '(1 2 -3)) #t)
(check-equal? (mais-positivos-que-negativos? '(1)) #t)
(check-equal? (mais-positivos-que-negativos? '(1  2 -2 -3)) #f)
(check-equal? (mais-positivos-que-negativos? '() ) #f))

(define (mais-positivos-que-negativos? lst)
(> (contar-positivos lst) (contar-negativos lst)))