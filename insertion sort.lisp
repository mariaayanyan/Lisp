(defun addElem(Li El)
    (if (null Li) (cons El nil)
        (if (<= El (car Li)) (cons El Li)
            (cons (car Li) (addElem (cdr Li) El)))
        )
    )

(defun SortHelper(Li Res)
    (if (null Li) Res
        (SortHelper (cdr Li) (addElem Res (car Li))) 
    ))

(defun SortList(Li)(SortHelper Li ()))

(print (SortList '(2 1 4 3 5 6)))