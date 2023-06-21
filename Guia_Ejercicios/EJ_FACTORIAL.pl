% EJ FACTORIAL

factorial(0,1).
factorial(1,1).
factorial(Numero,Resultado):-
    Numero >1,
    Numero1 is Numero-1,
    factorial(Numero1,Acumulador),
    Resultado is Numero*Acumulador.