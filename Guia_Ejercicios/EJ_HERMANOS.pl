#Ej3 Arbol Genealógico
hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría).


%niño(X,Y) % expresa que X es hijo o hija de Y.
niño(Hijo,Padre):-
    padre(Padre,Hijo).

%hijo(X,Y) % expresa que X es un hijo varón de Y.
hijo(Hijo,Padre):-
    padre(Padre,Hijo),
    hombre(Hijo). 

%hija(x,y) % expresa que X es una hija de Y.
hija(Hija,Padre):-
    padre(Padre,Hija),
    mujer(Hija). 
%hermano-o-hermana(X,Y) % expresa que X es hermano o hermana de Y.
hermano_o_hermana(Hermano1,Hermano2):-
	padre(Padre,Hermano1),
	padre(Padre,Hermano2),
    Hermano1 \== Hermano2.

%hermano(X,Y) % expresa que X es un hermano de Y.
hermano(Hermano1,Hermano2):-
	padre(Padre,Hermano1),
	padre(Padre,Hermano2),
    hombre(Hermano1),
    Hermano1 \== Hermano2.
%hermana(X,Y) % expresa que X es una hermana de Y.
hermana(Hermano1,Hermano2):-
	padre(Padre,Hermano1),
	padre(Padre,Hermano2),
    mujer(Hermano1),
    Hermano1 \== Hermano2.