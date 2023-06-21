% Ejercicio 08
% MENU CON MAYOR CANTIDAD DE CALORIAS

entrada(paella,100).
entrada(gazpacho,101).
entrada(consomé,102).

carne(filete_de_cerdo,30).
carne(pollo_asado,40).

pescado(trucha,50).
pescado(bacalao,60).

postre(flan,80).
postre(helado,70).
postre(pastel,90).

bebida(agua,12).
bebida(vino,34).
bebida(cerveza,65).

menu(Entrada,PlatoPrincipal,Postre,Bebida,Calorias):-
    entrada(Entrada,CaloriasEntrada),
    (carne(PlatoPrincipal,CaloriasPlatoPrincipal);pescado(PlatoPrincipal,CaloriasPlatoPrincipal)),
    postre(Postre,CaloriasPostre),
    bebida(Bebida,CaloriasBebida),
    Calorias is CaloriasEntrada+CaloriasPlatoPrincipal+CaloriasPostre+CaloriasBebida.

%OBTENER MENU CON MAXIMAS CALORIAS
producto_cartesiano(A,B):-
    menu(_,_,_,_,A),menu(_,_,_,_,B).

seleccion(A,B):-
    	producto_cartesiano(A,B),
    	A <B .

proyeccion(A):-
		seleccion(A,_).

todos_menos_max(A):-
    	proyeccion(A).

maximo(Entrada,PlatoPrincipal,Postre,Bebida,CaloriasMaximas):-
    menu(Entrada,PlatoPrincipal,Postre,Bebida,CaloriasMaximas),
    \+ todos_menos_max(CaloriasMaximas).

% Maximo Menu : consomé  bacalao  pastel cerveza 317 calorias



