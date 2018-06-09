;;;
;;; A highly simplified problem for today's American family
;;; Created by Scott Robertson
;;;William and Candace are alive and married.  They birth their son Sam.  They raise him to be healthy and educated. They send him to school.  He learns many things (troubled economy, fragile social system).  He desires to have many friends and to help the people around him.  But He needs to be able to support himself.  He desires a family.  He needs to be able to support his family.  

;;;He can decide to do this in three ways: start a sustainable farm, get a job in another country, or go to school in a specific field (STEM).


(define (problem get-sustained-life)
  (:domain sam-epp-life)
  (:objects william candace sam - character
            florida tennessee italy - place
            school farm job - destination)
  (:init 
         (alive william)
         (alive candace)
         (alive sam)
         (married william candace)
         (birthed william candace sam)
         (at william florida)
         (at candace florida)
         (intends william (alive candace))
         (intends candace (alive william))
         (intends william (sustained sam))
         (intends candace (sustained sam))
         
  (:goal (and (at sam tennessee)
              (sustained sam farm)
              ()))

  (:goal (and (at sam italy)
              (sustained sam job)
              ()))

  (:goal (and (at sam florida)
              (sustained sam school  )
              ()))
