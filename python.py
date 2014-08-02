print "Hello, Wordl!"

for i in range(10000):
	j = 10000 / 20
	v = 10000 / 100

	if ( i % v ) == 0 :
		import sys
		sys.stdout.write("\r[")
		g = i / j
		p= 20 - g
		
		for h in range(g):
			sys.stdout.write("=")
		else:

			for t in range(p):
				sys.stdout.write(" ")
			else:
		
				f = i / v
				sys.stdout.write("]%d%%" % f)

else:
	sys.stdout.write("\r[===================]100%")
	print ""

