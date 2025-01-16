#lang racket
(require examples)

;; Lista -> Lista

;; Indica a quantidade de números inteiros positivos e negativos em uma lista de números
(examples
    (check-equal? (mais-positivos-ou-negativos? '(1 -1)) '(1 1))
    (check-equal? (mais-positivos-ou-negativos? '(-1 1 1)) '(2 1))
    (check-equal? (mais-positivos-ou-negativos? '(-1 -2 1)) '(1 2))
    (check-equal? (mais-positivos-ou-negativos? '()) '(0 0))
    )

(define (mais-positivos-ou-negativos? lst)
  (foldl
   (λ (x acumulador)
     (cond
       [(> x 0) (list (add1 (first acumulador)) (second acumulador))] ; Incrementa o contador de positivos
       [(< x 0) (list (first acumulador) (add1 (second acumulador)))] ; Incrementa o contador de negativos
       [else acumulador]))
   (list 0 0)
   lst)) 

;; Lista -> String
;; Determina se o resultado é "Positivos" ou "Negativos" a partir de uma lista composta por dois inteiros.
;; O primeiro inteiro representa os números positivos, enquanto o segundo representa os negativos.
(examples
(check-equal? (resultado '(0 0)) "Empate")
(check-equal? (resultado '(1 0)) "Positivos")
(check-equal? (resultado '(0 1)) "Negativos")
)

(define (resultado lst)
    (cond
      [(> (first lst) (second lst)) "Positivos"]
      [(< (first lst) (second lst))  "Negativos"]
      [else "Empate"]))

;; O acumulador é responsável pela contagem de positivos e negativos enquanto a lista é percorrida pelo foldl.
;; O uso de acumuladores no foldl é eficaz para esse tipo de função, pois permite que a contagem 
;; seja feita de forma incremental e sem a necessidade de usar variáveis auxiliares.
