#lang racket
(require examples)

;; Direcao representa as direções cardeais.
;; Direcao é um dos valores:
;; - "norte"
;; - "leste"
;; - "sul"
;; - "oeste"


;; Indica a direção oposta de uma direção dada.
;; - Se a entrada for "norte", devolve "sul".
;; - Se a entrada for "sul", devolve "norte"
;; - Se a entrada for "leste", devolve "oeste".
;; - Se a entrada for "oeste", devolve "leste".
(examples
 (check-equal? (indica-dir-oposta "norte") "sul")
 (check-equal? (indica-dir-oposta "sul") "norte")
 (check-equal? (indica-dir-oposta "leste") "oeste")
 (check-equal? (indica-dir-oposta "oeste") "leste"))

(define (indica-dir-oposta direcao)
  (cond
    [(equal? direcao "norte") "sul"]
    [(equal? direcao "sul") "norte"]
    [(equal? direcao "leste") "oeste"]
    [(equal? direcao "oeste") "leste"]))


;; Indica qual direção que está a 90 graus no sentido horário da direção dada.
;; - Se a entrada for "norte", devolve "leste".
;; - Se a entrada for "sul", devolve "oeste"
;; - Se a entrada for "leste", devolve "sul".
;; - Se a entrada for "oeste", devolve "norte".
(examples
 (check-equal? (indica-dir-90graus-hor "norte") "leste")
 (check-equal? (indica-dir-90graus-hor "sul") "oeste")
 (check-equal? (indica-dir-90graus-hor "leste") "sul")
 (check-equal? (indica-dir-90graus-hor "oeste") "norte"))

(define (indica-dir-90graus-hor direcao)
  (cond
    [(equal? direcao "norte") "leste"]
    [(equal? direcao "sul") "oeste"]
    [(equal? direcao "leste") "sul"]
    [(equal? direcao "oeste") "norte"]))

;; Indica qual direção que está a 90 graus no sentido antihorario da direção dada.
;; - Se a entrada for "norte", devolve "oeste".
;; - Se a entrada for "sul", devolve "leste".
;; - Se a entrada for "leste", devolve "norte".
;; - Se a entrada for "oeste", devolve "sul".
(examples
 (check-equal? (indica-dir-90graus-antihor "norte") "oeste")
 (check-equal? (indica-dir-90graus-antihor "sul") "leste")
 (check-equal? (indica-dir-90graus-antihor "leste") "norte")
 (check-equal? (indica-dir-90graus-antihor "oeste") "sul"))

(define (indica-dir-90graus-antihor direcao)
  (indica-dir-90graus-hor (indica-dir-90graus-hor (indica-dir-90graus-hor direcao))))

;; Associa cada direção a um ângulo
(define (associar-angulo direcao)
  (cond
    [(equal? direcao "norte") 0]
    [(equal? direcao "leste") 90]
    [(equal? direcao "sul") 180]
    [(equal? direcao "oeste") 270]))

;; A partir de duas direções, indica quantos graus uma pessoa que está virada para a primeira direção precisa virar no sentido horário
;; para virar para a segunda posição.
(examples
 (check-equal? (angulo-para-virar "norte" "sul") 180)
 (check-equal? (angulo-para-virar "leste" "sul") 90)
 (check-equal? (angulo-para-virar "norte" "oeste") 270)
 (check-equal? (angulo-para-virar "sul" "leste") 270)
 (check-equal? (angulo-para-virar "sul" "sul") 0))

(define (angulo-para-virar primeira-dir segunda-dir)
  (let* ([angulo-inicial (associar-angulo primeira-dir)]
         [angulo-final (associar-angulo segunda-dir)]
         [rotacao (modulo (- angulo-final angulo-inicial) 360)])
    rotacao))
