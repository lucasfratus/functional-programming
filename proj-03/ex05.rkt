#lang racket
(require examples)
;; 5)a)
;; Ponto flutuante positivo ->  Ponto flutuante positivo
;; 
;; Transforma uma medida de centimetros em polegadas. Cada polegada corresponde
;; a 2,54 centimetros.
;;
;; Para converter uma medida de centimetros para polegadas, a medida é multiplicada por 2.54.
;;
(examples
 (check-equal? (centimetros->polegadas 1.0) 2.54)
 (check-equal? (centimetros->polegadas 0.0) 0.0)
 (check-equal? (centimetros->polegadas 2.54) 6.4516)
 (check-equal? (centimetros->polegadas 10.0) 25.4))

(define (centimetros->polegadas comprimento)
  (* comprimento 2.54))


;; 5)b)
;; Ponto flutuante positivo -> Ponto flutuante
;;
;; Transforma uma medida de polegadas em centimetros. Cada polegada equivale a 2.54 centimetros
;;
;; Para converter uma medida de polegadas para centimetros, a medida é dividida por 2.54
;;
(examples
 (check-equal? (polegadas->centimetros 2.54) 1.0)
 (check-= (polegadas->centimetros 1.0) 0.393701 0.000001)
 (check-equal? (polegadas->centimetros 25.4) 10.0))

(define (polegadas->centimetros comprimento)
  (/ comprimento 2.54))
