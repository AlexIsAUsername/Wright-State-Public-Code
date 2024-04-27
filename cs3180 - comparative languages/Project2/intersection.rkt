#lang racket
; with loop
; (define (intersection set1 set2)
;   (let ([returnSet '()])
;     (for ([i set1])
;       (when (member i set2)
;         (set! returnSet (cons i returnSet))))
;     returnSet))

(define (intersection set1 set2)
  (cond
    [(equal? set1 '()) '()]
    [(equal? set2 '()) '()]
    [(not (member (car set1) set2)) (intersection (cdr set1) set2)]
    [(member (car set1) set2) (cons (car set1) (intersection (cdr set1) set2))]))

(intersection '() '()) ;'()
(intersection '(1) '()) ;'()
(intersection '() '(1)) ;'()
(intersection '(1) '(1)) ;'(1)
(intersection '(1) '(2)) ;'()
(intersection '(2) '(1)) ;'()
(intersection '(1 2) '(1)) ;'(1)
(intersection '(1) '(1 2)) ;'(1)
(intersection '(1 2) '(2 3)) ;'(2)
(intersection '(1 2) '(3 4)) ;'()
(intersection '(1 2 3 4) '(2 3 4 5)) ;'(4 3 2)
