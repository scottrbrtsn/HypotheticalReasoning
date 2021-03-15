;;;
;;; A highly simplified version of the actions in the life of Sam
;;; Created by Scott P. Robertson
;;; Originally used to test hypothetical reasoning
;;;
(define (domain sam-epp-life)
  (:requirements :adl :domain-axioms :intentionality)
  (:types place location quality - object
  		male female - character)
  (:predicates (alive ?character - character)
	      			 (grown-up ?character - character)
					     (issick ?character - character)
					     (isbetter ?character - character)
               (at ?character - character ?location - location)
               (single ?character - character)
               (married ?character)
               (marriedto ?acharacter - character ?bcharacter - character)
               (hasapplied ?character - character ?place - place)
               (hasaccepted ?place - place ?character - character)
               (hasrejected ?place - place ?character - character)
               (loves ?lover - character ?love-interest - character)
               (exists ?place - place)
               (attending ?character - character ?location - location ?place - place)
	       			 (knows ?acharacter - character ?bcharacter - character)
  )

  ;; A character moves from one place to another.
  (:action move
    :parameters   (?character - character ?from - location ?to - location)
	:precondition (and (not (= ?from ?to))
                       (alive ?character)
                       (at ?character ?from)
                 )
	:effect       (and (not (at ?character ?from))
                       (at ?character ?to)
                 )
    :agents       (?character)
  )



 ;; One person applies to a place.
  (:action apply
    :parameters   (?character - character ?place - place)
	:precondition (and (alive ?character)
								 (grown-up ?character)
								 (exists ?place)
								)
	:effect       (hasapplied ?character ?place)
	:agents       (?character)
	)

  ;; A place accepts a character's application.
  (:action accept
    :parameters   (?place - place ?character - character)
	:precondition (and (exists ?place)
			   						 (alive ?character)
			  						 (hasapplied ?character ?place)
		      			)
	:effect       (and (hasaccepted ?place ?character)
			   							(not (hasrejected ?place ?character))
		     			 )
	:agents       (?place)
	)

	  ;; A place rejects a character's application.
  (:action reject
    :parameters   (?place - place ?character - character)
	:precondition (and (exists ?place)
										 (alive ?character)
										 (hasapplied ?character ?place)
								)
	:effect       (and (hasrejected ?place ?character)
											(not (hasaccepted ?place ?character))
								)
	:agents       (?place)
	)

  ;; A character attends a place.
  (:action attend
    :parameters   (?character - character ?location - location ?place - place)
	:precondition (and (alive ?character)
										 (at ?character ?location)
                     (not (attending ?character ?location ?place))
                     (hasaccepted ?place ?character)
                     (not (hasrejected ?place ?character))
                 )
	:effect       (attending ?character ?location ?place)
    :agents       (?character))


  ;; One character gets sick.
  (:action gets-sick
    :parameters   (?character - character)
	:precondition (and   (alive ?character)
											 (not (issick ?character))
								)
	:effect       (issick ?character)
    :agents       (?character))

;; One character cares for another
 (:action cares-for
    :parameters   (?caretaker - character ?patient - character)
	:precondition (and   (alive ?caretaker)
	 			(alive ?patient)
				(issick ?patient)
				(not(issick ?caretaker))
			)
	:effect       (isbetter ?patient)
    :agents       (?caretaker)
   )

;; Two characters meet.
  (:action meet
    :parameters   (?first - character ?second - character ?location - location)
    :precondition (and (alive ?first)
     		  						(alive ?second)
											(grown-up ?first)
											(grown-up ?second)
											(at ?first ?location)
											(at ?second ?location)
											(not (knows ?first ?second))
											(not (knows ?second ?first))
									)
    :effect (and (knows ?first ?second)
		 						(knows ?second ?first)
		 				)
    :agents (?first ?second)
)

;; Two characters who are in love get married.
  (:action marry
    :parameters   (?groom - male ?bride - female ?location - location)
    :precondition (and (alive ?groom)
											 (grown-up ?groom)
											 (grown-up ?bride)
								 			 (not (married ?groom))
                       (not (married ?bride))
                       (at ?groom ?location)
                       (loves ?groom ?bride)
                       (alive ?bride)
                       (at ?bride ?location)
                       (loves ?bride ?groom)
                      
                   )
    :effect       (and (not (single ?groom))
                       (married ?groom)
                       (marriedto ?groom ?bride)
                       (not (single ?bride))
                       (married ?bride)
                       (marriedto ?bride ?groom)
                   )
    :agents       (?groom ?bride)
    )

  ;; One character falls in love with another.
  (:action fall-in-love
    :parameters   (?male - male ?female - female ?location - location)
    :precondition (and (alive ?male)
											 (grown-up ?male)
											 (grown-up ?female)
                       (at ?male ?location)
                       (not (loves ?male ?female))
                       (alive ?female)
                       (at ?female ?location)
											 (not (loves ?female ?male))
											 (knows ?male ?female)
											 (knows ?female ?male)
                   )
    :effect       (and (loves ?male ?female)
                       (intends ?male (marriedto ?male ?female))
                       (intends ?female (marriedto ?female ?male))
                   )
   )

;; Two married characters have a child
  (:action have-child
    :parameters   (?male - male ?female - female ?character - character)
    :precondition (and (alive ?male)
											 (grown-up ?male)
											 (grown-up ?female)
                       (marriedto ?male ?female)
                       (marriedto ?female ?male)
                   )
    :effect       (and (alive ?character)
    									 (not (grown-up ?character))
    							)
    							
   )

	
;;A character grows up
	(:action grow-up
    :parameters   (?character - character)
    :precondition (and (alive ?character)
											 (not (grown-up ?character))
                   )
    :effect      (grown-up ?character)
    							
    							
   )


)
