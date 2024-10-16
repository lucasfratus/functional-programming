#lang racket
(define (par?  numero)
  (= 0 (remainder numero 2)))

;; > (par? 3)
;; (= 0 (remainder 3 2))
;; (remainder 3 2) ;; 1
;; ( = 0 1)
;; #f