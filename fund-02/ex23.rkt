#lang racket
(define (exclamacao frase numero_exclamacoes)
    (string-append frase (make-string numero_exclamacoes #\!)))

;; Exemplo de uso do Método de Substituição
;; > (exclamacao "Nossa" 3)
;; (string-append "Nossa" (make-string 3 #\!))
;; (make-string 3 #\!) ;; "!!!"
;; (string-append "Nossa" "!!!") ;; "Nossa!!!"
;; "Nossa!!!"