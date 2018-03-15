(define (factorial-iter product counter max-counter)
  (if (> counter max-counter)
      product
      (factorial-iter (* product counter) 
                      (+ 1 counter) 
                      max-counter)))

(define (factorial x)
  (factorial-iter 1 1 x))