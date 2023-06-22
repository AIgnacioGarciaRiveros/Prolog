% EJ SUPERFICIE_PAISES

pais_superficie(argentina,2780).
pais_superficie(brasil,8515).
pais_superficie(uruguay,1762).
pais_superficie(chile,7566).
pais_superficie(bolivia,1098).
pais_superficie(paraguay,4067).
pais_superficie(peru,1285).
pais_superficie(venezuela,9164).
pais_superficie(colombia,1141).
pais_superficie(guyana,2149).

%PROD CARTESIANO
prod_cartesiano(A,B):-
    	pais_superficie(_,A),pais_superficie(_,B).

%SELECCION
seleccion(A,B):-
    	prod_cartesiano(A,B),
    	A < B.

%PROYECCION
proyeccion(A):-
    	seleccion(A,_).

%TODOS_MENOS_MAX
todos_menos_max(B):-
    	proyeccion(B).

%MAXIMO
maximo(SuperficieMaxima):-
    	pais_superficie(_,SuperficieMaxima),
    	\+ todos_menos_max(SuperficieMaxima).

