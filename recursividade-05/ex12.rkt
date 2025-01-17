#lang racket
(require examples)

(examples
(check-equal? (inverte '(1 2 3)) '(3 2 1))
(check-equal? (inverte '("s" "ac" "u" "L")) '("L" "u" "ac" "s"))
(check-equal? (inverte '(1)) '(1))
(check-equal? (inverte '()) '()))

(define (inverte lst)
(cond
[(empty? lst) '()]
[else (append (inverte(rest lst)) (list(first lst)))]
)

)