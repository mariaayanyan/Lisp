;gnu clisp  2.49.60 
;nth fibonacci number
(defun fib(n) 
    (if (or (= n 1) (= n 2)) 1  
        (+ (fib (- n 1)) (fib (- n 2)) )
    )
) 

;x^y

(defun pow(x y)
    ( if(= y 0) 1
        ( if(> y 0) (* x (pow x (- y 1) ) ) 
            (/ (pow x (+ y 1) ) x)
        )
    )
)