Algoritmo PRACTICA_15_3
	//  DEFINIR LAS VARIABLES Y EL VECTOR SU TAMA�O MAXIMO DE NUMEROS
    Definir N como Entero
    Dimension pares(100) // Tama�o m�ximo del vector
    Dimension impares(100)
    Definir i como Entero
    i <- 1
	// AQUI TE PIDE INTRUDUCIR NUMEROS PARES  Y SE FINALIZA HASTA QUE INTRUSCAS EL 0
    Escribir "Introduce n�meros PARES (0 para terminar):"
    Leer N
	
    Mientras N <> 0 Hacer
        Si N % 2 = 0 Entonces
            pares[i] <- N
        Sino
            impares[i] <- N
        FinSi
        i <- i + 1
        Leer N
    FinMientras
	
    i <- 1
	// AQUIE SE MUESTRAN LOS NUMEROS PARES CON SU POSICION 
    Escribir "Vector de n�meros pares:"
    Mientras pares[i] <> Nulo Hacer
        Escribir "Posici�n ", i, ": ", pares[i]
        i <- i + 1
    FinMientras
	
    i <- 1
	// AQUI SE MUESTRAN LOS NUMEROS IMPARES INTRODUCIDOS Y SU POSICION 
    Escribir "Vector de n�meros impares:"
    Mientras impares[i] <> Nulo Hacer
        Escribir "Posici�n ", i, ": ", impares[i]
        i <- i + 1
    FinMientras
	
FinAlgoritmo

