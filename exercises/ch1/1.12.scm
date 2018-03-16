; 计算坐标 (x,y) 对应的数字
(define (position-data x y)
  (if (or (= y 1) (= x y))
      1
      (+ (position-data (- x 1) (- y 1)) (position-data (- x 1) y))))

; TODO
