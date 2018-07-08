(define (domain lisak)
    (:requirements :strips :typing :negative-preconditions)
    (:types node item)
    (:predicates
	    (in ?x ?y)
	    (free ?x)
	    (path ?x ?y)
   )

    (:action move
        :parameters (?what - item ?from - node ?to - node)
        :precondition (and
            (in ?what ?from)
 	        (path ?from ?to)
 	        (free ?to)
          )
        :effect (and
            (in ?what ?to)
	        (not (in ?what ?from))
	        (free ?from)
	        (not (free ?to))
          )
    )

)
