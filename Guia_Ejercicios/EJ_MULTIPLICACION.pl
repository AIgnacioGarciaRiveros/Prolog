#EJ MULTIPLICACION N de un numero X

%multiplicar(X,N,R):- N==1, R=X.
multiplicar(_,0,0).
multiplicar(Numero,1,Numero).
multiplicar(X,N,Resultado):-
    	N>1,
    N1 is N-1,
    multiplicar(X,N1,Acumulado),
    Resultado is X+Acumulado.
%si pongo Resultado = X+Acumulado me daria X+Acumulado, no lo resolveria