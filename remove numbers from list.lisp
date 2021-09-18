; удалить все числа из списка
(defun removeNumbers(Li)
    (if (numberp (car Li)) (removeNumbers (cdr Li))  
        (if(null Li) Nil (cons (car Li) (removeNumbers (cdr Li)) ) ) 
        )
)

(print (removeNumbers '(1 a 2 3 b c 777 d)))