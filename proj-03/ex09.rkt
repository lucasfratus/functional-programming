#lang racket
(require examples)
;;
;; Inteiro positivo -> Booleano
;;
;; Verifica se um número inteiro de 4 digitos é palindromo, isto é, o número é o mesmo se lido
;; da esquerda para a direita e vice-versa. Devolve #t se é palindromo. Caso contrário, devolve #f
;; A entrada deve ser um número inteiro positivo de 4 digitos.
;;
(examples
 (check-equal? (verifica-palindromo 2002) #t)
 (check-equal? (verifica-palindromo 7777) #t)
 (check-equal? (verifica-palindromo 1010) #f)
 (check-equal? (verifica-palindromo 3033) #f))

(define (verifica-palindromo numero4)
  (define numero-p-str (number->string numero4))
  (and (equal? (substring numero-p-str 0 1) (substring numero-p-str 3)) ; Compara a casa dos milhares com a das unidades
       (equal? (substring numero-p-str 1 2) (substring numero-p-str 2 3)))) ;; Compara a casa das centenas com a das dezenas

;; Com os recursos atuais, não é possivel modificar as função de maneira que ela funcione para números com uma quantidade de
;; qualquer, já que seria necessária alguma estrutura de repetição ou utilizar recursividade.