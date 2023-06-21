#EJ DIVISION CON RESTO

division_con_resto(Dividendo,Dividendo,1,0).
division_con_resto(Dividendo,1,Dividendo,0).
division_con_resto(Dividendo,Divisor,0,Dividendo):- Dividendo < Divisor .
division_con_resto(Dividendo,Divisor,Cociente,Resto):-
    	Dividendo >=Divisor,
    	NuevoDividendo is Dividendo - Divisor,
    	division_con_resto(NuevoDividendo,Divisor,Acum,NuevoResto),
    	Cociente is Acum+1,
    	Resto is NuevoResto.

