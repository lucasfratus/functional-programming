#lang racket
(require examples)
;; String -> Número
;;
;; Transforma uma String composta de "a"s e "b"s em um número binário. A letra "a" é substituida pelo número "0", enquanto
;; a letra "b" é substituida pelo número "1". A entrada deve ser exclusivamente composta pelas letras "a" e "b"

(examples
 (check-equal? (ab->number "a") 0)
 (check-equal? (ab->number "b") 1)
 (check-equal? (ab->number "ab") 1)
 (check-equal? (ab->number "ba") 2)
 (check-equal? (ab->number "bba") 6)
 (check-equal? (ab->number "baba") 10))
  
(define (ab->number s)
  (string->number
  (string-replace (string-replace s "a" "0" ) "b" "1")
2))