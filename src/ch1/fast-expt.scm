; 乘幂计算。
; 在空间和步数上相对于 n 都是对数。
; 
(define (even n)
    (= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (fast-expt b n)
    (if (= n 0)
        1
        (if (even n)
            (square (fast-expt b (/ n 2)))
            (* b (fast-expt b (- n 1))))))
  