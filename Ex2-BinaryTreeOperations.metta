;; Length

(= (length  ()) 0 )

(= (length (cons $x $xs)) (+1 (length $xs)))

!(length (1 2 3 4 ))


;; is-member

(= (is-member $x ()) False)

(= (is-member $x (cons $x $xs)) True)

(= (is-member $x (cons $y $xs)) (is-member $x $xs))

!(is-member 2 (1 2 3 ))


;; append

(= (append () $ys)
   $ys)

(= (append (cons $x $xs) $ys)
   (cons $x (append $xs $ys)))

!(append (1 2) (3 4))


;; max-value

(= (max-value (cons $x ()))
   $x)

(= (max-value (cons $x $xs))
   (if (> $x (max-value $xs))
       $x
       (max-value $xs)))


;; min-value

(= (max-value (cons $x ()))
   $x)

(= (max-value (cons $x $xs))
   (if (> $x (max-value $xs))
       $x
       (max-value $xs)))


;; Push

(= (push $x $xs)
   (cons $x $xs))


;; Pop

(= (pop (cons $x $xs))
   $xs)


;; Remove-element

(= (remove-element $x ())
   ())

(= (remove-element $x (cons $x $xs))
   (remove-element $x $xs))

(= (remove-element $x (cons $y $xs))
   (cons $y (remove-element $x $xs)))


;; Remove-duplicate

(= (remove-duplicate ())
   ())

(= (remove-duplicate (cons $x $xs))
   (if (is-member $x $xs)
       (remove-duplicate $xs)
       (cons $x (remove-duplicate $xs))))


;; Map

(= (map $f ())
   ())

(= (map $f (cons $x $xs))
   (cons ($f $x)
         (map $f $xs)))


;; Filter

(= (filter $f ())
   ())

(= (filter $f (cons $x $xs))
   (if ($f $x)
       (cons $x (filter $f $xs))
       (filter $f $xs)))


;; Foldl

(= (foldl $f $acc ())
   $acc)

(= (foldl $f $acc (cons $x $xs))
   (foldl $f ($f $acc $x) $xs))


;; Foldr

(= (foldr $f $acc ())
   $acc)

(= (foldr $f $acc (cons $x $xs))
   ($f $x (foldr $f $acc $xs)))


;; Reverse

(= (reverse ())
   ())

(= (reverse (cons $x $xs))
   (append (reverse $xs) (cons $x ())))


;; Sort

(= (insert $x ())
   (cons $x ()))

(= (insert $x (cons $y $ys))
   (if (< $x $y)
       (cons $x (cons $y $ys))
       (cons $y (insert $x $ys))))

(= (sort ())
   ())

(= (sort (cons $x $xs))
   (insert $x (sort $xs)))