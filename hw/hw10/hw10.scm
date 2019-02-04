(define (accumulate combiner start n term)
  (define (count_accum combiner n term result)
        (if (= n 0)
            result
            (count_accum combiner (- n 1) term (combiner result (term n))))
  )
 (count_accum combiner n term start)
)

(define (accumulate-tail combiner start n term)
(define (count_accum combiner n term result)
      (if (= n 0)
          result
          (count_accum combiner (- n 1) term (combiner result (term n))))
)
(count_accum combiner n term start)
)

(define (partial-sums stream)
    (define (helper start lst)
        (cond
            ((null? lst) nil)
            (else (cons-stream (+ start (car lst)) (helper (+ start (car lst)) (cdr-stream lst))))
         )
    )
  (helper 0 stream)
)

(define (rle s)
  (define (helper start lst repeat)
        (cond
            ((null? lst) (cons-stream (list start repeat) nil))
            ((not (* start (car lst))) (con-stream (list start repeat) (helper (car lst) (cdr-stream (cdr lst)) repeat)))
            (else (helper (car lst) (cdr-stream lst) (+ 1 repeat)))
        )
  )
  (if (null? s)
    nil
    (helper (car s) s 0)
  )
)
