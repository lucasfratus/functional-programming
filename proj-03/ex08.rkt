#lang racket
(require examples)
;;
;; Ponto flutuante Ponto flutuante -> Inteiro
;;
;; Calcula o número de azulejos necessários para azulejar uma parede a partir da sua altura e comprimento.
;; Nenhum azulejo é perdido ou reaproveitado.
;; A entrada deve ser dois pontos flutuante positivos (altura e comprimento)
;;

(examples
 (check-equal? (calcular-n-azulejos 1.0 1.0) 25)
 (check-equal? (calcular-n-azulejos 4.0 2.0) 200)
 (check-equal? (calcular-n-azulejos 3.0 2.5) 188)
 (check-equal? (calcular-n-azulejos 0.0 10.0) 0)
 (check-equal? (calcular-n-azulejos 5.0 0.0) 0)
 (check-equal? (calcular-n-azulejos 0.0 0.0) 0))

(define (calcular-n-azulejos comprimento altura)
  (inexact->exact(ceiling (/ (* comprimento altura) (* 0.20 0.20)))))