#lang racket
(require examples)

(examples
(check-equal? (amplitude '(1 2 3 4 5)) 4)
(check-equal? (amplitude '(1 1 1 1)) 0)
(check-equal? (amplitude '(1)) 0)
(check-equal? (amplitude '(10 20 30)) 20)
(check-equal? (amplitude '(2 3 -4 9)) 13)
)

(define (amplitude lst)
  ;; Função auxiliar para encontrar o máximo
  (define (encontrar-max lst)
    (cond
      [(empty? (rest lst)) (first lst)]                 
      [else (max (first lst) (encontrar-max (rest lst)))])) 

  ;; Função auxiliar para encontrar o mínimo
  (define (encontrar-min lst)
    (cond
      [(empty? (rest lst)) (first lst)]             
      [else (min (first lst) (encontrar-min (rest lst)))])) 

  ;; Calcule a amplitude
  (- (encontrar-max lst) (encontrar-min lst)))