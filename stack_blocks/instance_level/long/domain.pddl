(define (domain blocks)
    (:requirements :strips :negative-preconditions)
    (:predicates
        (on ?x ?y)
        (distinct ?x ?y)
        (on-top ?x)
        (on-ground ?x)
        (in-hand ?x)
        (hand-empty)
    )

    (:action pick-from-ground
        :parameters (?what)
        :precondition (and (hand-empty) (on-ground ?what) (on-top ?what))
        :effect (and (not (hand-empty)) (in-hand ?what) (not (on-ground ?what)) (not (on-top ?what)))
    )

    (:action place-on-ground
        :parameters (?what)
        :precondition (and (not (hand-empty)) (in-hand ?what))
        :effect (and (hand-empty) (not (in-hand ?what)) (on-ground ?what) (on-top ?what))
    )

    (:action pick
        :parameters (?what ?from)
        :precondition (and (hand-empty) (on ?what ?from) (on-top ?what))
        :effect (and (not (hand-empty)) (in-hand ?what) (not (on ?what ?from)) (not (on-top ?what)) (on-top ?from))
    )

    (:action place
        :parameters (?what ?to)
        :precondition (and (not (hand-empty)) (in-hand ?what) (on-top ?to))
        :effect (and (hand-empty) (not (in-hand ?what)) (on ?what ?to) (on-top ?what) (not (on-top ?to)))
    )
)