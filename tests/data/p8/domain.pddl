(define (domain p8)
    (:requirements :typing :strips :durative-actions :equality)
    (:types box location)
    (:predicates (loc ?b - box ?l - location))
    
    (:durative-action move
        :parameters (?b - box ?from ?to - location)
        :duration (= ?duration 1)
        :condition (and (at start (loc ?b ?from))
                   )
        :effect (and (at end (loc ?b ?to))
                     (at start (not (loc ?b ?from)))
                )
    )
)
