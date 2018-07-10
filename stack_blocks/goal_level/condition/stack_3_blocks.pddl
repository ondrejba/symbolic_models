(define (problem stack_3_blocks)
    (:domain blocks)
    (:requirements :strips :negative-preconditions)
  	(:objects stack1 stack2 stack3)
    (:init
        (in-state stack1)
        (next stack1 stack2)
        (next stack2 stack3)
    )
    (:goal (and
        (in-state stack3)
      )
    )
)