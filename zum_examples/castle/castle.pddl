(define (domain castle)
    (:requirements :strips :typing :negative-preconditions)
    (:types player location enemy thing chest element)
    (:predicates
        (path ?l1 ?l2)
        (at ?t ?l)
        (killed ?e)
    )
    (:action move
        :parameters (?p - player ?l1 - location ?l2 - location)
        :precondition (at ?p ?l1)
        :effect (and (at ?p ?l2) (not (at ?p ?l1)))
    )

    (:action kill
        :parameters (?p - player ?e - enemy ?l - location)
        :precondition (and (at ?p ?l) (at ?e ?l))
        :effect (killed ?e)
    )

)