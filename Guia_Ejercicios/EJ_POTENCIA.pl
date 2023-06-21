% EJ POTENCIA

% potencia(Numero,Exponente,Resultado).
potencia(_,0,1).
potencia(Numero,1,Numero).
potencia(Numero,Exponente,Resultado):-
    Exponente > 1,
    NuevoExponente is Exponente-1,
    potencia(Numero,NuevoExponente,Acumulador),
    Resultado is Numero*Acumulador.