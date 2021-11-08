(defun make_pairs(elem Set)
    (if (null Set) nil
        (cons (cons elem (cons (car Set) nil)) (make_pairs elem (cdr Set)) )
     ))

(defun product_helper(Set1 Set2 dest)
    (if (null Set1) dest
        (product_helper (cdr Set1) Set2 (union dest (make_pairs (car Set1) Set2) )  )
     ))

(defun cartesian_product(Set1 Set2)(product_helper Set1 Set2 () ))

;(print (cartesian_product '(1 2 3) '(4 5 6)))