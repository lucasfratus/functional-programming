#lang racket
(define (produto-anterior-posterior n)
    (* (n-1) n (n+1)))

;; Metodo de substituição
;; > (produto-anterior-posterior 3)
;; (* (3-1) 3 (3+1))
;; (* 2 3 (3+1))
;; (* 2 3 4)
;; (* 6 4)
;; 24