; 函数 f 由如下的规则定义：如果 n<3，那么 f(n)=n；
; 如果 n>=3，那么 f(n)=f(n-1)+2*f(n-2)+3f(n-3)。
; 请写一个采用递归计算过程计算f的过程，再写一个采用迭代
; 计算过程计算f的过程.
; 

; 递归计算过程
(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

; 迭代计算过程
(define (f-iter n)
  (if (< n 3)
      n
      (f-iter-helper 0 1 2 3 n)))

(define (f-iter-helper x y z counter max-counter)
  (if (> counter max-counter)
      z
      (f-iter-helper y z (+ z (* 2 y) (* 3 x)) (+ 1 counter) max-counter)))
