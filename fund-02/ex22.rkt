#lang racket
(define (so-primeira-maiuscula str)
    (string-append (string-upcase(substring 0 1))
        (string-downcase(substring str 1 (string-length str)))))