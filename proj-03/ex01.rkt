#lang racket
(require examples)
;; InteiroPositivo -> Boolean 
;; 
;; Produz #t se uma pessoa com a idade n é supercentenária, 
;; isto é, tem mais de 110 anos (não contando 110), #f caso contrário. 
(examples 
(check-equal? (supercentenario 101) #f) 
(check-equal? (supercentenario 110) #f) 
(check-equal? (supercentenario 112) #t))

(define (supercentenario n)
(> n 110))