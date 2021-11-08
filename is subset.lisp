(defun is_in(elem Set) 
    (if(null Set) nil
         (if (equalp (car Set) elem) T
              (is_in elem (cdr Set))
         )
    )
)

(defun is_subset(Li1 Li2)
    (if (null Li1) T
        (if (is_in (car Li1) Li2) (is_subset (cdr Li1) Li2) nil)
         )
     )

(print (is_subset '(1 2 3) '(4 5 6 1 3 )))