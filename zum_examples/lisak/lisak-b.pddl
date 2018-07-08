(define (problem lisak-b)
    (:domain lisak)
    (:requirements :strips :typing :negative-preconditions)
  	(:objects
		l1 l2 l3 l4 l5 l6 l7 l8 l9 - node
		n1 n2 n3 n4 n5 n6 n7 n8 - item
	)
    (:init
        (path l1 l4)
        (path l4 l1)

        (path l1 l2)
	    (path l2 l1)

	    (path l2 l5)
	    (path l5 l2)

        (path l2 l3)
	    (path l3 l2)

	    (path l3 l6)
        (path l6 l3)

        (path l4 l7)
        (path l7 l4)

        (path l4 l5)
        (path l5 l4)

        (path l5 l8)
        (path l8 l5)

        (path l5 l6)
        (path l6 l5)

        (path l6 l9)
        (path l9 l6)

        (path l7 l8)
        (path l8 l7)

        (path l8 l9)
        (path l9 l8)

        (in n8 l1)
        (in n2 l2)
        (in n7 l3)

        (in n5 l4)
        (in n1 l5)
        (in n3 l6)

        (in n4 l7)
        (in n6 l8)

        (free l9)
    )
    (:goal (and
        (in n1 l1)
        (in n2 l2)
        (in n3 l3)

        (in n4 l4)
        (in n5 l5)
        (in n6 l6)

        (in n7 l7)
        (in n8 l8)

        (free l9)
      )
    )
)
