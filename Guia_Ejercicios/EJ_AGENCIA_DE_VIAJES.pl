%EJ AGENCIA DE VIAJES
transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).


viaje(Ciudad,Semanas,Estancia,Precio):-
    transporte(Ciudad,PrecioTransporte),
    alojamiento(Ciudad,Estancia,PrecioEstanciaPorSemana),
    Precio is PrecioTransporte+Semanas*PrecioEstanciaPorSemana.
%le tengo que pasar las semanas si o si 

viaje2(Ciudad,Semanas,Estancia,Precio):-
    transporte(Ciudad,PrecioTransporte),
    alojamiento(Ciudad,Estancia,PrecioEstanciaPorSemana),
    Precio = PrecioTransporte+Semanas*PrecioEstanciaPorSemana.
%noconoce a S, entonces deja la formula para cuadno decida la cantidad de semanas

%si queria darle solo 1 o 2 semanas hago:
% semanas(1).
%semanas(2).
% adentro de viaje , en la 1ra linea pondria, semanas(S),
viajeeconomico(Ciudad,Semanas,Estancia,Precio,PrecioMax):-
    viaje(Ciudad,Semanas,Estancia,Precio),
    Precio < PrecioMax.

%2 GRUPOS RELACIONADOS POR UNA INTERSECCION --> PROD CARTESIANO
%a(1).
%a(2).
%a(3).
%b(1).
%b(2).
%b(3).
%en consola pongo a(X),b(Y).