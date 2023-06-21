%Definir la relación mcd(X,Y,Z) que se verifique si Z es el máximo común divisor entre X e Y. Por ejemplo:
%mcd(10,15,X).
%> X = 5

division_con_resto(Dividendo,Dividendo,1,0).
division_con_resto(Dividendo,1,Dividendo,0).
division_con_resto(Dividendo,Divisor,0,Dividendo):- Dividendo < Divisor .
division_con_resto(Dividendo,Divisor,Cociente,Resto):-
    	Dividendo >=Divisor,
    	NuevoDividendo is Dividendo - Divisor,
    	division_con_resto(NuevoDividendo,Divisor,Acum,NuevoResto),
    	Cociente is Acum+1,
    	Resto is NuevoResto.

%euclides(Numero1,Numero2,Resultado).
euclides(Numero1,0,Numero1).
euclides(Numero1,Numero2,Resultado):-
    	Numero2>0,
    	division_con_resto(Numero1,Numero2,_,Resto),
    	euclides(Numero2,Resto,Resultado).

es_maximo_comun_divisor(SupuestoMaximoDivisor,Numero1,Numero2):-
     	euclides(Numero1,Numero2,Resultado),
    	Resultado == SupuestoMaximoDivisor.

minimo_comun_multiplo(Numero1,Numero2,MaximoComunDivisor,Resultado):-
    	Producto is Numero1*Numero2,
    	division_con_resto(Producto,MaximoComunDivisor,Cociente,_),
    	Resultado is Cociente.

es_minimo_comun_multiplo(SupuestoMinimoMultiplo,Numero1,Numero2):-
    	euclides(Numero1,Numero2,MCD),
    	minimo_comun_multiplo(Numero1,Numero2,MCD,Resultado),
    	Resultado == SupuestoMinimoMultiplo.