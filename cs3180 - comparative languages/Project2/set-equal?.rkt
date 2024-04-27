#lang racket
; if form of solution
; (define (set-equal? set1 set2)
;   (define boolEqual #f)
;   (if (= (length set1) (length set2))
;       (if (= (length set1) (length set2) 0)
;           (set! boolEqual #t)
;           (if (member (car set1) set2)
;               (set! boolEqual (set-equal? (cdr set1) (remove (car set1) set2)))
;               (set! boolEqual #f))
;       )
;       (set! boolEqual #f))
;   boolEqual)

(define (set-equal? set1 set2)
    (let ([boolEqual #f])
        (cond
            [(= (length set1) (length set2) 0) (set! boolEqual #t)]
            [(not (= (length set1) (length set2))) (set! boolEqual #f)]
            [else (set! boolEqual (set-equal? (cdr set1) (remove (car set1) set2)))])
        boolEqual))

(set-equal? '() '()) ;#t
(set-equal? '(1) '(1)) ;#t
(set-equal? '(1 2) '(1 2)) ;#t
(set-equal? '(1 2 3 4) '(3 4 2 1)) ;#t
(set-equal? '(1 2) '(1)) ;#f
(set-equal? '(1) '(2 1)) ;#f
(set-equal? '(1 2 3 4) '(3 4 5 1)) ;#f
