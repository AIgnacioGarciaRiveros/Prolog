Ejercicio 0 "Paises Limitrofes"

limita(argentina,paraguay).
limita(argentina,bolivia).
limita(argentina,brasil).
limita(argentina,chile).
limita(argentina,uruguay).
limita(chile,peru).
limita(bolivia,peru).
limita(bolivia,paraguay).
limita(paraguay,brasil).
limita(brasil,uruguay).
limita(brasil,peru).
limita(brasil,colombia).
limita(brasil,venezuela).
limita(brasil,guyana).

%Predicados de control
% , and
% ; or
% \+ not

% Unificaciones
% =
% \=
%Comparaciones
% == da verdadero si ambos terminos son iguales
% \== da falso si ...
% 
%Reglas
limita_con(Pais1,Pais2):-
    limita(Pais1,Pais2);
    limita(Pais2,Pais1).

translimita_con(P1,P2):-
    limita_con(P1,PIntermedio),
    limita_con(PIntermedio,P2),
    \+limita_con(P1,P2),
    P1 \== P2.
% SI PONGO P1 DISTINTO P2 ARRIBA DE LIMITA_CON VA A DAR 
% CUALQUIER COSA, XQ NO VA A SABER DE DONDE SACA LOS VALORES
% SI PONGO LA LINEA 33 PRIMERA PASA LO MISMO

% es lo mismo que ponerlos en un or a(x):-false;true.
a(x):-false.
a(y):-true.