; 请定义一个过程，它以三个数为参数，返回其中较大的两个数之和。

(define (sum-of-max-two x y z)
  (cond ((and (>= x y) (>= y z)) (+ x y))
        ((and (>= x z) (>= z y)) (+ x z))
        ((and (>= y x) (>= x z)) (+ y x))
        ((and (>= y z) (>= z x)) (+ y z))
        ((and (>= z x) (>= x y)) (+ z x))
        ((and (>= z y) (>= y x)) (+ z y))))