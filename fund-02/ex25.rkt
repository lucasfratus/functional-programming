#lang racket
(define (tres-digitos? numero)
    (equal? (string-length (number->string numero)) 3))

;; > (tres-digitos? 99)
;;(equal? (string-length (number->string 99)) 3)
;;(number->string 99) ;; 99 -> "99"
;;(equal? (string-length "99") 3)
;;(string-length "99") ;; 2
;;(equal? 2 3)
;; #f