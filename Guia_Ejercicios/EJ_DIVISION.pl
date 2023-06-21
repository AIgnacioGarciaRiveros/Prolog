# EJ DIVISION

division(Dividendo,Divisor,0):-
    	Dividendo < Divisor.
division(Dividendo,Divisor,Cociente):-
    	Dividendo >= Divisor,
    	NuevoDividendo is Dividendo-Divisor,
    	division(NuevoDividendo,Divisor,Acum2),
    	Cociente is 1+Acum2.
