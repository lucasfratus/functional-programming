#lang racket


(require examples)

;; Verifica se todos os booleanos de uma lista de booleanos são verdadeiros

(examples
 (check-equal? (algum-verdadeiro? '(#t #t #t)) #t)
 (check-equal? (algum-verdadeiro? '(#t #f #t)) #t)
 (check-equal? (algum-verdadeiro? '(#f #t)) #t)
 (check-equal? (algum-verdadeiro? '(#f)) #f)
 (check-equal? (algum-verdadeiro? '(#t)) #t))

(define (algum-verdadeiro? lst)
  (foldr (λ (b acumulador) (or b acumulador)) #f lst))


