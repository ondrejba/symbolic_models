(define (problem castle_problem)
    (:domain castle)
    (:requirements :strips :typing :negative-preconditions)
    (:objects
        hero - player
        vampire dragon - enemy
        castle_room castle_hall castle_treasury castle_kitchen market - location
        gold pale - thing
    )
    (:init
        (at hero castle_room)
        (at vampire castle_kitchen)
        (at dragon castle_treasury)
        (path castle_room castle_hall)
        (path castle_hall castle_kitchen)
        (path castle_hall castle_treasury)
    )
    (:goal (and
        (killed vampire)
        (killed dragon)
    ))
)