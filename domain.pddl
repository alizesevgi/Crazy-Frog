(define (domain crazy-eat)
(:requirements :strips :typing)
(:types frog - animal
	sinek - food
	xaxis - dikey
	yaxis - yatay)

(:predicates (at ?a - animal ?x - dikey ?y - yatay)
	     
	     (att ?f - food ?x - dikey ?y - yatay)
	     (eaten ?s - sinek))


 
 
 
 (:action eatx
 :parameters (?f - frog ?d - xaxis ?y1 ?y2 - yaxis ?s - sinek)
 :precondition (and (at ?f ?d ?y1) (att ?s ?d ?y2) (not (eaten ?s)))
 :effect (and (eaten ?s) (at ?f ?d ?y2)))
 
 (:action eaty
 :parameters (?f - frog ?d1 ?d2 - xaxis ?y - yaxis ?s - sinek)
 :precondition (and (at ?f ?d1 ?y) (att ?s ?d2 ?y) (not (eaten ?s)))
 :effect (and (eaten ?s) (at ?f ?d2 ?y)))
 )
