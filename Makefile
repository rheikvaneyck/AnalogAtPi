mcp3204: mcp3204.c
	gcc -o mcp3204 mcp3204.c -lbcm2835
clean:
	rm *~ *.o mcp3204
