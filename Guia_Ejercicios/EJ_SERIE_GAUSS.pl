% EJERCICIO SERIE DE GAUSS
%suma_gauss(Numero,Resultado).

suma_gauss(1,1).
suma_gauss(Numero,Resultado):-
    	Numero > 1,
    	NuevoNumero is Numero-1,
    	suma_gauss(NuevoNumero,Acum),
    	Resultado is Numero+Acum.