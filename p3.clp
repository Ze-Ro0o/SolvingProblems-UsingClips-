(defrule readfile (initial-fact)=>

    (open "C:/Users/COMPU1/Desktop/Assignment 1 Web/input.txt" data "r")
    (bind ?data (readline data))
    (while (neq ?data EOF)
       (assert (information (explode$ ?data)))  
       (bind ?data (readline data)))
    (close data)

)


(defrule calculateGPA (information ?a ?b ?x  ?y ?z)=> 
(bind ?gpa (/ (+ ?b ?x ?y ?z) 4))
(open "C:/Users/COMPU1/Desktop/Assignment 1 Web/output.txt" out "a")
(printout out  ?a "     (" ?b" " ?x" " ?y" " ?z ") "  ?gpa crlf) (close out))

