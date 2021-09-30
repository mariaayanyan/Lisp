; найти элемент в данном списке
(defun findElementInList(Li elem)
    (if (null Li) Nil
        (if (= (car Li) elem) T (findElementInList  (cdr Li) elem ) ) )
    )

(print (findElementInList '(1 2 3 4 3 3 5) 3))


; найти количество вхождений элемента в списке
(defun countElementInList(Li elem) 
    (if (null Li) 0
        (if (= (car Li) elem) (+ 1 (countElementInList (cdr Li) elem) ) (countElementInList (cdr Li) elem) ) )
    
    )

(print (countElementInList '(1 2 3 4 3 3 5) 3))


; найти первое вхождение элемента в списке, вернуть 0 если его там нет

(defun findFirstOfHelper(Li elem i)
    (if (null Li) 0 
        (if (= elem (car Li) ) i (findFirstOfHelper (cdr Li) elem (+ i 1) ))
        )
    )

(defun findFirstOf(Li elem) (findFirstOfHelper Li elem 1) )

(print (findFirstOf '(1 2 3 4 3 3 5) 3))


; найти i-й элемент в списке, вернуть Nil если i > List size 
 
(defun elementAt(Li i) 
    (if (null Li) nil 
        (if (= i 1) (car Li) (elementAt (cdr Li) (- i 1) ) ) 
)) 
 
(print (elementAt '(1 2 3 4 5 6) 3))