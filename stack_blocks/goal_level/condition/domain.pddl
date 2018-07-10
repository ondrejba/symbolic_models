(define (domain blocks)
    (:requirements :strips :negative-preconditions :adl)
    (:predicates
        (hand-full)
        (in-state ?x)
        (next ?x ?y)
    )

    (:action pick
        :parameters ()
        :precondition (not (hand-full))
        :effect (hand-full)
    )

    (:action place
        :parameters ()
        :precondition (hand-full)
        :effect (and
            (not (hand-full))
            (forall (?s1 ?s2)
                (when (and (in-state ?s1) (next ?s1 ?s2))
                (and (not (in-state ?s1)) (in-state ?s2)))
            )
        )
    )
)