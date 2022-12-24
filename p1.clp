(deffacts family (father Ahmed Mohammed)(mother Mona Ali)(father Ali Sara)(father Hassan Ahmed))


 (defrule rule-1 
(or (father ?x ?y) (mother ?x ?y))=> (assert (parent ?x ?y)))


 (defrule rule-2
(or (father ?x ?y) (mother ?x ?y)) (father ?z ?x)=> (assert(grandfather ?z ?y)))


 (defrule rule-3
(or (father ?x ?y) (mother ?x ?y)) (mother ?z ?x)=> (assert(grandmother ?z ?y)))