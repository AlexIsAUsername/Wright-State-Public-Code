#lang racket
(define (set-equal? set1 set2)
  (let ([boolEqual #f])
    (cond
      [(= (length set1) (length set2) 0) (set! boolEqual #t)]
      [(not (= (length set1) (length set2))) (set! boolEqual #f)]
      [(not (list? (member (car set1) set2))) (set! boolEqual #f)]
      [else (set! boolEqual (set-equal? (cdr set1) (remove (car set1) set2)))])
    boolEqual))

; with loop
; (define (union set1 set2)
;   (let ([returnSet '()])
;     (for ([i set1])
;       (unless (member i returnSet)
;         (set! returnSet (cons i returnSet))))
;     (for ([i set2])
;       (unless (member i returnSet)
;         (set! returnSet (cons i returnSet))))
;     returnSet))

; (define (union set1 set2)
;   (cond
;     [(= (length set1) (length set2) 0) '()]
;     [(= (length set1) 0) (union set2 set1)]
;     [(not (member (car set1) set2)) (cons (car set1) (union (cdr set1) (remove (car set1) set2)))]
;     [(set-equal? set1 set2) (union set1 '())]))

(define (union set1 set2)
  (letrec ([notInOtherList
            (lambda (seta setb)
              (cond
                [(= (length setb) 0) '()]
                [(not (member (car setb) seta)) (cons (car setb) (notInOtherList seta (cdr setb)))]
                [(notInOtherList seta (cdr setb))]
                [(cons (car setb) (notInOtherList seta (cdr setb)))]))])
    (cond
      [(equal? set2 '()) set1]
      [(equal? set1 '()) set2]
      [else (append (notInOtherList set1 set2) set1)])))

(union '() '()) ;'()
(union '(1) '()) ;'(1)
(union '() '(1)) ;'(1)
(union '(1) '(1)) ;'(1)
(union '(1) '(2)) ;'(2 1)
(union '(1 2) '(1)) ;'(2 1)
(union '(1) '(1 2)) ;'(2 1)
(union '(1 2) '(2 3)) ;'(3 2 1)
(union '(1 2) '(3 4)) ;'(4 3 2 1)
(union '(1 2 3 4) '(2 3 4 5)) ;'(5 4 3 2 1)

;(cons '(1 2) '(1))
