(define (fib n)
  cond ((= n 0) 0)
       ((= n 1) 1)
       (else (+ (fib (- n 1)
)))
)

(define (fib n)
    (fib-iter 1 0 n))

(define (fib-iter a b count)
    (if (= count 0
       b
       (fib-iter (+ a b) a (- count 1))
    ))
)

; page 27

(define (how-much-methods amount kinds-of-coins)
    (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (how-much-methods amount (- kinds-of-coins 1))
                (how-much-methods (- amount (select-coins kinds-of-coins))
                    kinds-of-coins
                )

        )))
)

(define (select-coins kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)
    )
)

; 1.11
(define (f n)
    (cond ((< n 3) n)
        (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))) )
    ))
)


; 1.15
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angel)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0)))
    )
)

; 1.2.4

(define (expt b n)
    (expt-iter b n 1)
)

(define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b (- counter 1) (* b product))
    )
)

(define (fast-expt b n)
    (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))
    )
)

(define (even? n)
    (= (remainder n 2) 0)
)
