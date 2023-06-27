película(padrino, drama,coppola, 4.5).
película(fiction,drama,tarantino, 4.4).
película(anillos, fantasia,jackson, 4.6).
película(pelea,drama,fincher, 4.3).
película(origen,ciencia_ficcion,nolan, 4.5).
película(schindler,drama,spielberg, 4.6).
película(interestelar,ciencia_ficcion,nolan, 4.4).
película(gum,drama,zemeckis, 4.5 ).
película(titanic,romance,cameron, 4.2).
película(matrix,ciencia_ficcion,brothers, 4.3).


recomendar_genero(Genero,Película):- 
    película(Película,Genero,_,_).
% CALCULAR MINIMO 
producto_cartesiano(A,B):-
	película(_,_,_,A),
    película(_,_,_,B).

seleccion(A,B):-
    producto_cartesiano(A,B),
    A > B.

proyeccion(A):-
    seleccion(A,_).

todos_menos_min(A):-
    proyeccion(A).

recomendar_calificacionMin(MinCal,Película):-
    película(Película,_,_,MinCal),
    \+ todos_menos_min(MinCal).
% CALCULAR 2DO MINIMO


% CALCULAR MAXIMO
seleccion_mayor(A,B):-
    producto_cartesiano(A,B),
    A < B.

proyeccion_mayor(A):-
    seleccion_mayor(A,_).

todos_menos_max(A):-
    proyeccion_mayor(A).

recomendar_calificacionesMax(MaxCal,Película):-
    película(Película,_,_,MaxCal),
    \+ todos_menos_max(MaxCal).

% CALCULAR 2DO MAXIMO
prod_cartesiano_max_2(X,Y):-
    	todos_menos_max(X),
    	todos_menos_min(Y).

seleccion_max_2(X,Y):-
    	prod_cartesiano_max_2(X,Y),
    	X < Y.

proyeccion_max_2(X):-
    seleccion_max_2(X,_).

todos_menos_max_2(X):-
    proyeccion_max_2(X).

recomendar_calificacionesMax_2(MaxCal,Película):-
    película(Película,_,_,MaxCal),
    \+ todos_menos_max_2(MaxCal).

recomendar_calificacionesMax_solo2(Cal,Película):-
    película(Película,_,_,Cal),
     todos_menos_max_2(MaxCal),
    Cal == MaxCal.
    
