#lang racket

(require examples)

;; Verifica se todos os booleanos de uma lista de booleanos são verdadeiros

(examples
 (check-equal? (todos-verdadeiros? '(#t #t #t)) #t)
 (check-equal? (todos-verdadeiros? '(#t #f #t)) #f)
 (check-equal? (todos-verdadeiros? '(#f #t)) #f)
 (check-equal? (todos-verdadeiros? '(#f)) #f)
 (check-equal? (todos-verdadeiros? '(#t)) #t))

(define (todos-verdadeiros? lst)
  (foldl (λ (b acumulador) (and b acumulador)) #t lst))


;; O acumulador é responsável por manter o resultado parcial da operação "and" entre todos os elementos processados
;; até aquele momento.