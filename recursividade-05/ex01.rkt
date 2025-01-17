#lang racket
(require examples)

(examples
(check-equal? (concatena-strings '("L" "u" "c" "as")) "Lucas")
(check-equal? (concatena-strings '("l")) "l")
(check-equal? (concatena-strings '("")) "")
(check-equal? (concatena-strings '("" "")) ""))


(define (concatena-strings lst)
    (cond
    [(empty? lst) ""]
    [else (string-append (first lst) (concatena-strings (rest lst)))]))