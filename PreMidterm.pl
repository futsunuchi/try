Mathematical expressions:
(operation operan1 operan2 .... operand n)
example: 2* cos0 *(4+6)
* 2 cos0 (+ 4 6)
example2:
(not (and(= 3 (+ 1 2)) (< 4 3) (= 7 (+ 2 3))))

(setq pets (dog cat))

car is equivalent to HEAD and cdr is equivalent to TAIL. so car returns an element and cdr returns a liste
example: (print (cdr '(3 (4))))
this will print ((4))
example2: (print (cdr (cons 'a '(b c)))
this will print (b c)

BINDING SYNTAX
(let
	(
	
		binding block
	
	)
	expression
)
example: 
(let (  
		(a 2)
		(b 3)
		(c 0)
	 )
	(setq c (+ a b))
	(print c)
)

SYNTAX FOR CONDITIONS

(cond 
	((condition 1) (true-branch))
	((condition 2) (true-branch2))
	.
	.
	.
	((condition n) (true-branchn))
)

RECURSIVE FUNCTIONS
(defun nameOfFunction(parameters)
	expressions
)
Example:
A recursive functin to find the power of a number. Example power(3 2)=9

(defun fib(x)
    (if (or(= x 2) (= x 1))
        1
      (+ (fib(- x 1)) (fib (- x 2)) ))
)
(print (Fib 6))

SETS SUBSETS UNIONS AND INTERSECTIONS

union is a key word used to find the union between two setservent
intersection is a key word used to find the intersection between two set
set-difference is a key word used to find A/B or A-B

Writing trees in LISP
'( 1
	(2
		(4 () ())
		(5 () ())
	)
	
	(3
		(6 () ())
		(7 () (8 () ()))
	)
	
	()
)
Wrote this tree but organized differently
'( 1 (2(4 () ())(5 () ())) (3(6 () ())(7 () (8 () ())))() )

Example of linear search:

(defun linear-search(lst elt pos)
	(if (null lst)
		nil
		(if (equal (car lst) elt)
			pos
			(linear-search (cdr lst) elt (+ pos 1))
		)
	)
)

(print (linear-search '(5 4 3 5 6 4) 3 1))


































