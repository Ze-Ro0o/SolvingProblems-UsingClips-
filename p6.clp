(deftemplate Person
(multislot personName)
(multislot  children)
)

(defrule MoreThanThree
(Person (personName $?x) (children ?a ?b ?c $?d))
=>
(printout t ?x   crlf))


(deffacts Person1
(Person (personName hassan hassan) (children mazen kl ali noor) )
(Person (personName menna hassan) (children mazen kl ali noor khaled))
(Person (personName joe hassan) (children mazen noor))
)


(defrule takeinput (initial-fact)=>(printout t "Enter the child name : " ) (assert (childname(read))) )


(defrule getparentofchild
 (childname ?child) (Person (personName $?pers) (children $? ?child $?) ) => (printout t ?pers  ))