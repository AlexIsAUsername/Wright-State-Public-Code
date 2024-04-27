#lang racket
(define (powerset lst)
  (letrec ([generateStartingWith (lambda (lst1)
                                   (let ([lst2 '()])
                                     (set! lst2
                                           (map (lambda (a)
                                                  (set! lst2 (append lst2 (list a)))
                                                  lst2)
                                                lst1))
                                     lst2))]
           [generateAll
            (lambda (lst1 lst2)
              (if (equal? lst1 '())
                  '()
                  (append (generateStartingWith (append (remove (car lst1) lst2) (list (car lst1))))
                          (generateAll (cdr lst1)
                                       (append (remove (car lst1) lst2) (list (car lst1)))))))]
           [feedGenerateAll
            (lambda (lst1)
              (cond
                [(equal? lst1 '()) '()]
                [else (append (generateAll (car lst1) (car lst1)) (feedGenerateAll (cdr lst1)))]))]
           [recursiveSort
            (lambda (set)
              (let ([returnList '()] [nestedList '()])
                (for ([i set])
                  (cond
                    [(list? i) (set! nestedList (append nestedList (list (recursiveSort i))))]
                    [(number? i) (set! returnList (append returnList (list i)))]))
                (set! returnList (sort returnList <))
                (set! returnList (append returnList nestedList))
                returnList))])
    (cons '() (remove-duplicates (recursiveSort (feedGenerateAll (permutations lst)))))))

(powerset '(1 3 5))