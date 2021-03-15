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
         (at william new-orleans)
         (at candace new-orleans)
         (grown-up william)
         (grown-up candace)
         (alive william)
         (alive candace)
         (grown-up william)
         (grown-up candace)
         (knows william candace)
         (knows candace william)
         (loves william candace)
         (loves candace william)
         (intends william (married william))
         (intends candace (married candace))
         (intends sam (hasapplied sam google))
         (intends sam (at sam denver))
         (intends google (hasaccepted google sam))
         (exists google)

)

(:goal (and 
        (married william)
        (married candace)
        (alive sam)
        (grown-up sam)
        (hasapplied sam google)
        (at sam denver)
    )
 )

)
