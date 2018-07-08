(define (domain blocks)
    (:requirements :strips :negative-preconditions)
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
        :parameters (?s1 ?s2)
        :precondition (and (hand-full) (in-state ?s1) (next ?s1 ?s2))
        :effect (and (not (hand-full)) (not (in-state ?s1)) (in-state ?s2))
    )
)