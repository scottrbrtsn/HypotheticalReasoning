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
         (alive mary)
         (grown-up mary)
         (single sam)
         (single mary)
         (at sam new-orleans)
         (exists google)
         (exists university-denver)
         (exists farm)
         (exists stanford)
         (intends sam (attending sam denver google))
         (intends sam (married sam))
         (intends mary (at mary idaho))
         (intends mary (married mary))
   )

(:goal (and 
        (attending sam denver google)
        (married sam)
        (married mary)
        (marriedto sam mary)
        (marriedto mary sam)
        (at mary denver)

    )
 )

)
