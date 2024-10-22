#lang racket
(require examples)
;;
;; String -> Bool
;; Verifica se o tamanho de uma palavra é par. Retorna #t se for par.
;; Caso contrário, retorna #f.
;;
(examples
 (check-equal? (verifica-par "oi") #t)
 (check-equal? (verifica-par "teste") #f)
 (check-equal? (verifica-par "") #t))

(define (verifica-par palavra)
  (= (remainder (string-length palavra) 2) 0))

;;
;; String -> String
;;
;; Verifica se a String de entrada é uma palavra duplicada, ou seja,
;; é formada por duas partes iguais, podendo ser ou não separadas por hífen.
;; Retorna #t se é uma palavra duplicada.
;; Caso contrário, retorna #f
;;
(examples
 (check-equal? (verifica-duplicada "lero-lero") #t)
 (check-equal? (verifica-duplicada "mimi") #t)
 (check-equal? (verifica-duplicada "anti-heroi") #f)
 (check-equal? (verifica-duplicada "funcional") #f))

(define (verifica-duplicada palavra)
  (define meio (quotient (string-length palavra) 2))
  (if (verifica-par palavra)
      (equal? (substring palavra 0 meio) (substring palavra meio))
      (equal? (substring palavra 0 meio) (substring palavra (+ meio 1)))))