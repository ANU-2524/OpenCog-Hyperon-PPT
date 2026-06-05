;John Parents
!(match &self (Parent $x John) $x)

;Pam Mother
!(match &self (Parent $x Pam) (match &self (Female $x) $x)) ; Using here twice match, cuz "!(match &self ((Parent $x Pam) (Female $x)) $x)" not working.

;Pam Siblings
!(match &self (Parent $x Pam) (match &self (Male $x) (match &self (Parent $x $y) $y))) ;Matching siblings of Pam by one of parent of Pam only.

;Tim Uncle
!(match &self (Parent $x Tim) (match &self (Parent $y $x) (match &self (Male $y) (match &self (Parent $y $u) $u))))  ; Giving wrong result, i am not able to exclude the parent of Tim from result "not-equal" and "neq" not working.

;John Nephews
!(match &self (Parent $x John) (match &self (Parent $x $y) (match &self (Parent $y $c) (match &self (Male $c) $c))))  ; Giving wrong result, not able to exclude John's child, in order to result John's nephews and getting duplicate result.

;Bob Predecessors
!(match &self (Parent $x Bob) (match &self (Parent $y $x) ($x $y)))