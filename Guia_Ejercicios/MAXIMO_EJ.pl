%EJ PARCIALES

parcial1(ana,7).
parcial1(juan,4).
parcial1(julio, 2).
parcial1(maria, 10).
parcial1(norbert,3).
parcial1(carlos,4).
parcial1(sebastian,9).

parcial2(ana,9).
parcial2(juan,4).
parcial2(julio, 2).
parcial2(maria, 2).
parcial2(carlos,6).
parcial2(sebastian,8).
parcial2(norbert,3).

% OBTENER NOTA MAS ALTA
nota(2).
nota(4).
nota(9).
nota(7).

%16 pares AXB
producto_cartesiano(A,B):-
    nota(A),nota(B).

%quedate con izq < der, son 6 registros 
seleccion(A,B):-
    producto_cartesiano(A,B),
    A < B.

% nos quedamos con la parte de la izquierda
proyeccion(A):-
    seleccion(A,_).

todos_menos_max(A):-
    proyeccion(A).

maximo(X):-
    nota(X),
    \+ todos_menos_max(X).