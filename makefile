diet: diet.l
	lex  diet.l
	gcc -o example.dt lex.yy.c -lfl

lex.yy.c: y.tab.c diet.l
	lex diet.l

y.tab.c: diet.y
	yacc -d diet.y

clean:
	rm -rf lex.yy.c y.tab.c y.tab.h diet diet.dSYM example.dt
