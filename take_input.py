import os 

f_in = open("sample_input.txt","r")
f_out = open("problem.pddl","w+")


Matrix = []
sinek_count = 0
dim = 0
for line in f_in:
	row_list = line.split()
	dim = len(row_list)
	for a in row_list:
		if a =="0":
			sinek_count = sinek_count + 1 
		
	Matrix.append(row_list)
	
x_axis_string = "- xaxis"
y_axis_string = "- yaxis)"
sinek_string = "- sinek" 

while sinek_count !=0:
	sinek_string = "sin"+str(sinek_count) +" " + sinek_string 
	sinek_count = sinek_count - 1
while dim !=0:
	x_axis_string = "x"+str(dim) +" " + x_axis_string
	y_axis_string = "y"+str(dim) +" " + y_axis_string
	dim = dim - 1


f_out.write("""(define (problem cf3)
(:domain crazy-eat)
(:objects
	thefrog - frog \n""")
f_out.write("        " + sinek_string + "\n")
f_out.write("        " + x_axis_string + "\n")
f_out.write("        " + y_axis_string + "\n")

f_out.write("(:init\n")

curr_x = 1
curr_y = 1
curr_sin_count = 0

for row in Matrix:
	for tile in row:
		if tile =="0":
			curr_sin_count = curr_sin_count + 1
			f_out.write("        "+"(att " + "sin"+str(curr_sin_count)+" x"+str(curr_x)+" y"+str(curr_y)+")\n")
		elif tile =="F":
			f_out.write("        "+"(at " + "thefrog"+" x"+str(curr_x)+" y"+str(curr_y)+")\n")
		curr_y = curr_y + 1	
	curr_x = curr_x + 1
	curr_y = 1
f_out.write(")")	

f_out.write("(:goal (and\n")

sinek_string = sinek_string.split(" ")

for a in sinek_string :
	if a =="-":
		break
	else:
		f_out.write("        "+"(eaten " + a + ")\n")
f_out.write(")))\n")
f_out.close()
f_in.close()

os.system('./fast-downward.py ./problem.pddl --search "astar(lmcut())"')
