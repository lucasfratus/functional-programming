#lang racket
(define (so-primeira-maiuscula str)
    (string-append (string-upcase(substring str 0 1))
        (string-downcase(substring str 1 (string-length str)))))

;; Metodo de substituição
;; > (so-primeira-maiuscula "paula")
;;   (string-append (string-upcase(substring "paula" 0 1))
;;        (string-downcase(substring "paula" 1 (string-length paula))))
;; (substring "paula" 0 1) ;; "p"
;; (string-upcase "p" ) ;; "P"
;; (substring "paula" 1 5) ;; "aula"
;; (string-downcase "aula") ;; "aula"
;; (string-append "P" "aula") ;; "Paula"
;; "Paula"