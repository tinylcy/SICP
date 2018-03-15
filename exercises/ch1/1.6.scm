; 拟牛顿法计算平方根

(define (abs x)
  (cond ((< x 0) (- x))
        ((>= x 0) x)))

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough guess x)
  (< (abs (- x (square guess))) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x)) 

; Aborting!: maximum recursion depth exceeded
; 
; 思考：
; new-if 是一个过程，在 Scheme 中首先会计算所有的
; 参数，因此无论 good-enough 是否满足，都会去计算
; sqrt-iter，不会直接返回 guess。
; if 不是函数，它会按照顺序进行处理，如果 good-enough
; 满足就不会计算 sqrt-iter。
