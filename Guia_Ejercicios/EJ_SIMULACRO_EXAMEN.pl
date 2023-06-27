#EJERCICIO EXAMEN PROLOG
% Base de conocimientos de libros

% libro(Titulo, Autor, Genero, Paginas)

libro(1984, orwell, distopia, 863).
libro(cienaños, márquez, realismo_magico, 432).
libro(gatsby, fitzgerald, drama, 180).
libro(donquijote, cervantes, clasico, 863).
libro(orgullo,austen, romance, 432).
libro(ulises,joyce, modernista, 432).
libro(moby,melville, aventura, 585).
libro(crónica,márquez, drama, 120).
libro(lasombra,zafón, misterio, 567).
libro(juegoshambre,collins, ciencia_ficcion, 863).
libro(anillos,tolkien, fantasia, 1178).

obtener_libros_autor(Autor,Libros):-
		 libro(Libros,Autor,_,_).

%OBTENER LIBRO CON MAX CANTIDAD DE PAGINAS
producto_cartesiano(X,Y):-
    	libro(_,_,_,X),
    	libro(_,_,_,Y).

seleccion(X,Y):-
    producto_cartesiano(X,Y),
    X < Y.

proyeccion(X):-
    seleccion(X,_).

todos_menos_max(X):-
    proyeccion(X).

maximo_paginas(X):-
    libro(_,_,_,X),
    \+ todos_menos_max(X).

libro_con_max_paginas(Titulo,Autor,Genero,Paginas):-
    maximo_paginas(Paginas),
    libro(Titulo,Autor,Genero,Paginas).
%OBTENER 2DO LIBRO CON MAX CANT DE PAGINAS
producto_cartesiano_2(X,Y):-
    todos_menos_max(X),
    todos_menos_max(Y).

seleccion_2(X,Y):-
    producto_cartesiano_2(X,Y),
    X < Y.

proyeccion_2(X):-
    seleccion_2(X,_).

todos_menos_max_2(X):-
    proyeccion_2(X).

maximo_paginas_2(X):-
    libro(_,_,_,X),
    \+ todos_menos_max_2(X),
    todos_menos_max(X).%con esta ultima linea dejas solo el 2do

libros_con_2mayor_cant_paginas(Titulo,Paginas):-
    	libro(Titulo,_,_,Paginas),
    	maximo_paginas_2(SegMayorPaginas),
    	Paginas == SegMayorPaginas.

obtener_libros_con_casi_mas_largos(Libros):-
    	libros_con_2mayor_cant_paginas(Libros,_).



    	