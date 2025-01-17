#lang racket
(define (ordem a b c)
    (cond
          [(and (= c b) (= b a)) "Iguais"]
          [(and (>= c b) (>= b a)) "Crescente"]
          [(and (<= c b) (<= b a)) "Descrescente"]
          [else "Sem ordem"]))

;; Metodo de substituição
;; > (ordem 3 8 12)
;;   (cond
;;          [(and (= 12 8) (= 8 3)) "Iguais"]
;;          [(and (>= 12 8) (>= 8 3)) "Crescente"]
;;          [(and (<= 12 8) (<= 8 3)) "Descrescente"]
;;          [else "Sem ordem"]))

;; (and (= 12 8) (= 8 3)) ;; #f
;; (and (>= 12 8) (>= 8 3)) ;; # t

;; Crescente
z