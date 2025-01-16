#lang racket
(require examples)
;; Lista -> Lista
;; Mostra, respectivamente, uma lista com o maior e o menor valor de uma lista nao vazia de numeros 
(examples
(check-equal? (amplitude '(1 3 4)) '(1 4))
(check-equal? (amplitude '(1 1 1 1)) '(1 1))
(check-equal? (amplitude '(7 1 1 0)) '(0 7)))

(define (amplitude lst)
  (foldl
   (lambda (x acumulador)
     (list (min x (first acumulador)) (max x (second acumulador))))  
   (list (car lst) (car lst))  
   lst))

;; Lista -> Inteiro
;; Calcula a amplitude(diferença do maior e menor valor) de uma lista de dois valores
(examples
(check-equal? (calcular-amplitude '(1 4)) 3)
(check-equal? (calcular-amplitude '(1 1)) 0)
(check-equal? (calcular-amplitude '(0 10)) 10))

(define (calcular-amplitude lst)
    (- (first(rest lst)) (first lst)))

;; O acumulador é responsável por armazenar os valores mínimos e máximos ao percorrer a lista, 
;; e a função foldl aplica as atualizações de forma incremental, sem a necessidade de uma ou mais variáveis.

