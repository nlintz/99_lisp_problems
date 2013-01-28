#lang racket

;P01
(define (my-last 
         l) (car (reverse l))
         )

;p02
(define (my-but-last
        l) (car (cdr (reverse l)))
  )


;p03
(define (element-at l i)
  (define (tail-element-at l i ans)
    (if (= i 0)
        ans
        (tail-element-at (cdr l) (- i 1) (car l))
        )
    )
  (tail-element-at l i '())
  )
    

;p04
(define (num-elements l)
  (define (tail-num-elements l ans)
    (if (= (length l) 0)
        ans
        (tail-num-elements (cdr l) (+ ans 1))
        )
    )
  (tail-num-elements l 0)
  )

;p05
(define (reverse-list l)
  (define (tail-reverse-list l ans)
    (if (= (length l) 0)
        ans
        (tail-reverse-list (cdr l) (cons (car l) ans))
        )
    )
  (tail-reverse-list l '())
  )

;p06
(define (palindrome word)
  (if (equal? word (reverse-list word))
      #t
      #f
      )
  )

;p07
(define (flatten l)
  (if (> (length l) 2)
      l
      (flatten (foldl (car l) (cadr l) ) )
      )
  )
