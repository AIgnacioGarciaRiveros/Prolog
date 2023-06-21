%Ejercicio 01
entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(agua).
bebida(vino).
bebida(cerveza).

%1- ¿Cuáles son los menús que ofrece el restaurante?
menu(Entrada,PlatoPrincipal,Postre):-
    entrada(Entrada),
    (carne(PlatoPrincipal);pescado(PlatoPrincipal)),
    postre(Postre).
% ; se usa con parentesis

%2- ¿Cuáles son los menús que tienen Consomé en las entradas?
menu_con_consome(Carne,Postre):-
    	menu(consomé,Carne,Postre).
%da los resultados correctos, no muestra columna de consomé
%se puede pensar como que ya decidi que voy a comer consomé

menu_con_consome2(Carne,Postre):-
    	Entrada = consomé,
    	menu(Entrada,Carne,Postre).
% se entiende que ya elegi consomé, por eso no me lo muestra

menu_con_consome3(Entrada,Carne,Postre):-
    	menu(Entrada,Carne,Postre),
    	Entrada == consomé.
%Obtengo el conjunto de todas las opciones posible y 
% a partir de ahi filtro.

%3- ¿Cuáles son los menús que no contienen flan como postre?
menu_sin_flan(Entrada,Carne,Postre):-
    menu(Entrada,Carne,Postre),
   	Postre \== flan.

menu_sin_flan2(Entrada,Carne,Postre):-
    menu(Entrada,Carne,Postre),
    \+ (Postre = flan).

menu_final(Entrada,PlatoPrincipal,Postre,Bebida):-
    entrada(Entrada),
    (carne(PlatoPrincipal);pescado(PlatoPrincipal)),
    postre(Postre),
    bebida(Bebida).


