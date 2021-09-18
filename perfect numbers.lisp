(defun sumOfDivisors(i n) 
    (if(> i (/ n 2)) 0 
       (if(= (rem n i) 0) (+ i (sumOfDivisors (+ i 1) n)) (sumOfDivisors (+ i 1) n) )     
)) 

; совершенное число
(defun isPerfect(n)(if(= (sumOfDivisors 1 n) n) T Nil))

; количесто совершенных чисел на отрезке [n; m]
(defun countPerfect(n m)(if(> n m) 0 (if(isPerfect n) (+ 1 (countPerfect (+ n 1) m))  (countPerfect (+ n 1) m)  )))