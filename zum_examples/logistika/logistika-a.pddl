(define (domain logistika-a)
    (:requirements :strips :typing :negative-preconditions)
    (:types car location package)
    (:predicates
	    (in ?x ?y)
	    (path ?x ?y)
   )

    (:action move
        :parameters (?what - car ?from - location ?to - location)
        :precondition (and
            (in ?what ?from)
 	    (path ?from ?to)
          )
        :effect (and
            (in ?what ?to)
	    (not (in ?what ?from))
          )
    )

    (:action load
        :parameters (?what - package ?car - car ?where - location)
        :precondition (and
            (in ?what ?where)
            (in ?car ?where)
          )
        :effect (and
            (in ?what ?car)
            (not (in ?what ?where))
          )
    )

    (:action unload
        :parameters (?what - package ?car - car ?where - location)
        :precondition (and
            (in ?what ?car)
            (in ?car ?where)
          )
        :effect (and
            (in ?what ?where)
            (not (in ?what ?car))
          )
    )
)
