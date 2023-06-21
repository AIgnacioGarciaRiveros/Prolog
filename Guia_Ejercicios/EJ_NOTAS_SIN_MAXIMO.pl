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

%- 1)A) El listado de los alumnos que promocionan la materia

promocionar_materia_con_nota(Alumno,Nota):-
    parcial1(Alumno,NotaPrimerParcial),
    parcial2(Alumno,NotaSegundoParcial),
    NotaPrimerParcial >=7,
    NotaSegundoParcial >=7,
    Nota is (NotaPrimerParcial+NotaSegundoParcial)/2.

promocionar_materia(Alumno):-
    parcial1(Alumno,NotaPrimerParcial),
    parcial2(Alumno,NotaSegundoParcial),
    NotaPrimerParcial >=7,
    NotaSegundoParcial >=7.

%- 2) El listado de los alumnos que recursan la materia
recursar_materia(Alumno):-
    parcial1(Alumno,NotaPrimerParcial),
    parcial2(Alumno,NotaSegundoParcial),
    (NotaPrimerParcial < 4;NotaSegundoParcial < 4).

%- 3) El listado de los alumnos que obtendrán la cursada.
obtener_alumnos(Alumno):-
    parcial1(Alumno,_),
    parcial2(Alumno,_).

cursar_materia(Alumno):-
    obtener_alumnos(Alumno),
   \+ recursar_materia(Alumno),
   \+ promocionar_materia(Alumno).