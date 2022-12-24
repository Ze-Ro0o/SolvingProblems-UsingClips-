(defclass Shape
(is-a USER)
(role abstract)
(slot ID (type SYMBOL))
(slot color (allowed-values red blue green yellow)))


(defclass Square
(is-a Shape)
(role concrete)
(slot length (type INTEGER)))


(defmessage-handler Square calcArea ()
(bind ?varlength (send ?self get-length))
(bind ?vararea (* ?varlength ?varlength))
)

(defmessage-handler Square calcPerimeter ()
 (bind ?varlength (dynamic-get length))
(bind ?varperimeter (* ?varlength 4))
)

(defclass Rectangle
(is-a Shape)
(role concrete)
(slot length (type INTEGER))
(slot width (type INTEGER)))





(defmessage-handler Rectangle calcArea ()
 (bind ?varlength (dynamic-get length))
 (bind ?varwidth (dynamic-get width))
(bind ?vararea (* ?varlength ?varwidth))
)

(defmessage-handler Rectangle calcPerimeter ()
 (bind ?varlength (dynamic-get length))
 (bind ?varwidth (dynamic-get width))
(bind ?varperimeter (* (+ ?varlength ?varwidth) 2))
)


(definstances shapes
(s1 of Square (ID A)(color blue) (length 3))
(r1 of Rectangle (ID C) (width 2) (length 5)))
