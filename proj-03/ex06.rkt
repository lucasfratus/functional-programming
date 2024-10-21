#lang racket
(require examples)
;;
;; Ponto flutuante positivo -> Ponto flutuante positivo
;;
;; Calcula o imposto que deve ser pago sobre uma renda.
;; Se a renda é até 1000 dinheiros (incluindo 1000), 5% de imposto é pago.
;; Se a renda é entre 1000 e 5000 dinheiros (incluindo 5000), são pagos de imposto 5% sobre 1000 dinheiros e 10% sobre o que passar de 1000.
;; Se a renda é mais de 5000 dinheiros, são pagos de imposto 5% sobre 1000 dinheiros, 10% sobre 4000 dinheiros e 20% do que passar de 5000.
;;
;; O valor da renda deve ser maior ou igual a 0.
(examples
 (check-equal? (calcular-imposto 0.0) 0.0) ; 0,0
 (check-equal? (calcular-imposto 900.0) 45.0) ; 45.0
 (check-equal? (calcular-imposto 1000.0) 50.0) ; 50.0
 (check-equal? (calcular-imposto 4500.5) 400.05) ; 50.0 + 350.05
 (check-equal? (calcular-imposto 5000.0) 450.0) ; 50.0 + 400.0
 (check-equal? (calcular-imposto 6000.0) 650.0)) ; 50.0 + 400.0 + 200.0 

(define (calcular-imposto renda)
  (cond
    [(<= renda 1000)
     (* renda 0.05)] ; 5% sobre até 1000 (incluindo 1000)
     
    [(<= renda 5000)
     (+ (* 1000 0.05)  ; 5% sobre os 1000
        (* (- renda 1000) 0.10))] ; 10% sobre o que passar de 1000
     
    [else
     (+ (* 1000 0.05)  ; 5% sobre os 1000
        (* 4000 0.10)  ; 10% sobre os 4000
        (* (- renda 5000) 0.20))])) ; 20% sobre o que passar de 5000