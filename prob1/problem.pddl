(define (problem cf3)
(:domain crazy-eat)
(:objects
	thefrog - frog 
        sin1 sin2 sin3 sin4 sin5 sin6 sin7 sin8 sin9 sin10 sin11 - sinek
        x1 x2 x3 x4 - xaxis
        y1 y2 y3 y4 - yaxis)
(:init
        (att sin1 x1 y1)
        (att sin2 x1 y2)
        (att sin3 x1 y3)
        (att sin4 x1 y4)
        (att sin5 x2 y2)
        (att sin6 x3 y1)
        (att sin7 x3 y2)
        (att sin8 x3 y3)
        (att sin9 x3 y4)
        (att sin10 x4 y1)
        (at thefrog x4 y3)
        (att sin11 x4 y4)
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
)))
