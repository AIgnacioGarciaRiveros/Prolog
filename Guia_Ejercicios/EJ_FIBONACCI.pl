% EJ FIBONACCI

fibonacci(0,0).
fibonacci(1,1).
fibonacci(Numero,Resultado):-
    	Numero >1,
    	N1 is Numero-1,
    	N2 is Numero-2,
    	fibonacci(N1,Acum1),
    	fibonacci(N2,Acum2),
    	Resultado is Acum1+Acum2.

fibonacci_mejorado(0,0,0).
fibonacci_mejorado(1,1,0).
fibonacci_mejorado(Numero,Resultado,Acum):-
    			Numero > 1,
    			N1 is Numero-1,
    			fibonacci_mejorado(N1,Acum,AcumAnterior),
    			Resultado is Acum+AcumAnterior.

fibonacci_performante(N,R):-
    		fibonacci_mejorado(N,R,_).