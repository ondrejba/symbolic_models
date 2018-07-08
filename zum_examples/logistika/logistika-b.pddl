(define (domain logistika-a)
    (:requirements :strips :typing :negative-preconditions)
    (:types car location package)
    (:predicates
	    (in ?x ?y)
	    (path ?x ?y)
	    (full ?x)
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
            (not (full ?car))
          )
        :effect (and
            (in ?what ?car)
            (not (in ?what ?where))
            (full ?car)
          )
    )

    (:action unload
        :parameters (?what - package ?car - car ?where - location)
        :precondition (and
            (in ?what ?car)
            (in ?car ?where)
            (full ?car)
          )
        :effect (and
            (in ?what ?where)
            (not (in ?what ?car))
            (not (full ?car))
          )
    )
)
