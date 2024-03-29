(define (problem cf3)
(:domain crazy-eat)
(:objects
	thefrog - frog 
        sin1 sin2 sin3 sin4 sin5 sin6 sin7 sin8 sin9 sin10 sin11 sin12 sin13 sin14 sin15 sin16 sin17 sin18 sin19 - sinek
        x1 x2 x3 x4 x5 - xaxis
        y1 y2 y3 y4 y5 - yaxis)
(:init
        (att sin1 x1 y1)
        (att sin2 x1 y2)
        (att sin3 x1 y3)
        (att sin4 x1 y4)
        (att sin5 x2 y2)
        (att sin6 x2 y5)
        (att sin7 x3 y1)
        (att sin8 x3 y2)
        (att sin9 x3 y3)
        (att sin10 x3 y4)
        (att sin11 x4 y1)
        (at thefrog x4 y2)
        (att sin12 x4 y3)
        (att sin13 x4 y4)
        (att sin14 x4 y5)
        (att sin15 x5 y1)
        (att sin16 x5 y2)
        (att sin17 x5 y3)
        (att sin18 x5 y4)
        (att sin19 x5 y5)
)(:goal (and
        (eaten sin1)
        (eaten sin2)
        (eaten sin3)
        (eaten sin4)
        (eaten sin5)
        (eaten sin6)
        (eaten sin7)
        (eaten sin8)
        (eaten sin9)
        (eaten sin10)
        (eaten sin11)
        (eaten sin12)
        (eaten sin13)
        (eaten sin14)
        (eaten sin15)
        (eaten sin16)
        (eaten sin17)
        (eaten sin18)
        (eaten sin19)
)))
