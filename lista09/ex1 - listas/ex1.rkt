#lang racket
(require examples)
;; Concatena as strings de uma lista de strings
(examples
 (check-equal? (concat-strings '()) "")
 (check-equal? (concat-strings '("Mundo!" ", " "Olá")) "Olá, Mundo!")
 (check-equal? (concat-strings '("a" "b" "c")) "cba")
 (check-equal? (concat-strings '("s" "a" "c" "u" "l")) "lucas"))


(define (concat-strings lst)
  (foldl string-append "" lst))

;; O acumulador mantém a concatenação de strings, além da utilização do 'foldl' eliminar a necessidade de implementar a recursão de forma manual.