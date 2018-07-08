(define (problem lisak-b)
    (:domain lisak)
    (:requirements :strips :typing :negative-preconditions)
  	(:objects 
		l1 l2 l3 l4 - node
		n1 n2 n3 - item
	)
    (:init
        (path l1 l2)
	    (path l2 l1)

        (path l1 l3)
	    (path l3 l1)

	    (path l2 l4)
	    (path l4 l2)

        (path l3 l4)
	    (path l4 l3)

        (in n3 l1)
        (in n2 l3)
        (in n1 l4)

        (free l2)
    )
    (:goal (and
        (in n1 l1)
        (in n2 l2)
        (in n3 l3)
        (free l4)
      )
    )
)
