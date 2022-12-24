(deftemplate state 
(slot countryname)
(multislot color)
)

(deffacts states 
(state(countryname Egypt)(color red white black ))
(state(countryname US)(color red white black ))
(state(countryname Belgium)(color black yellow red ))
(state(countryname Sweden)(color yellow blue ))
(state(countryname Italy)(color green white red ))
(state(countryname Irland)(color green white orange ))
(state(countryname Greece)(color blue white ))
)

(defrule ay 
(input ?x)
(state(countryname ?z)(color $? ?x $?))=>(printout t ?z crlf)
(open "C:\\Users\\COMPU1\\Desktop\\Assignment 1 Web\\output.txt" out "a")
(printout out ?z crlf)
(close out)
)