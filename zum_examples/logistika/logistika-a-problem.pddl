(define (problem logistika-a-problem)
    (:domain logistika-a)
    (:requirements :strips :typing :negative-preconditions)
  	(:objects 
		c1 c2 c3 c4 c5 c6 - location
		A B C D E - package
		truck - car
	)
    (:init
        (path c1 c2)
	    (path c2 c1)

        (path c1 c3)
	    (path c3 c1)

	    (path c1 c4)
	    (path c4 c1)

        (path c2 c3)
	    (path c3 c2)

        (path c3 c4)
	    (path c4 c3)

        (path c3 c5)
	    (path c5 c3)

        (path c3 c6)
	    (path c6 c3)

        (path c5 c6)
	    (path c6 c5)

        (in A c1)
        (in B c2)
        (in C c3)
	    (in D c4)
	    (in E c5)
	    (in truck c1)
    )
    (:goal (and
        (in truck c1)
        (in A c5)
        (in B c6)
        (in C c2)
	    (in D c1)
	    (in E c2)
      )
    )
)
