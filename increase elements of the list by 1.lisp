; увеличить элементы списка на 1
(defun increaseBy1(Li)
    (if (null Li) Li (cons (+ 1 (car Li) ) (increaseBy1 (cdr Li) ) ) )
)

(print (increaseBy1 '(0 1 2 3 4 5) ) )