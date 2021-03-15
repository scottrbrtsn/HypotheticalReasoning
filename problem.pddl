;;;
;;; A highly simplified problem for today's American family
;;; Created by Scott Robertson

(define (problem get-life)
  (:domain sam-epp-life)
  (:objects male female- character
              william sam - male
              mary candace - female
              new-orleans denver idaho - location
              stanford university-denver google farm - place)
  (:init 
         (alive william)
         (alive candace)
         (grown-up william)
         (grown-up candace)
         (knows william candace)
         (knows candace william)
         (loves william candace)
         (loves candace william)
         (at william new-orleans)
         (at candace new-orleans)
         (intends william (married))
         (intends candace (married))
   )

(:goal (and 
        (married william)
        (married candace)
        (marriedto william candace)
        (marriedto candace william)

    )
 )

)
