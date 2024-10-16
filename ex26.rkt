#lang racket
(define (maximo x1 x2)
  (if (>= x1 x2)
      x1
      x2))

;; Método da substituição
;; > (maximo 3 5)
;;(if (>= 3 5)
;;     3
;;     5)
;;(>= 3 5)
;;5