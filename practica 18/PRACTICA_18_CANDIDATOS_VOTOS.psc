Algoritmo PRACTICA_18_CANDIDATOS_VOTOS
	// AQUI SE DEFINEN LAS VARIABLES CON LOS ARREGLOS 
	// TEMPVOTOS SIGNIFICA TEMPORALES VOTOS O VOTOS TEMPORALES 
	// MINIMOVOTOS ES PARA SACAR EL CANDIDATO CON MENOS VOTOS 
    dimension candidatos[50] 
    Dimension votos[50] 
    Definir totalVotos Como Entero
    Definir n Como Entero
    Definir i, j, tempVotos Como Entero
    Definir tempCandidato Como Caracter
    Definir minimoVotos Como Real
	
    Escribir "Ingrese la cantidad de candidatos: "
    Leer n
	
    totalVotos <- 0
	
    Para i <- 1 Hasta n
        Escribir "Ingrese el nombre del candidato ", i, ": "
        Leer candidatos[i]
        Escribir "Ingrese la cantidad de votos para ", candidatos[i], ": "
        Leer votos[i]
        totalVotos <- totalVotos + votos[i]
    Fin Para
	
    umbralVotos <- totalVotos * 0.1
	
    // ORDENAMIENTO DE LOS CANDIDATOS POR LA CANTIDAD DE VOTOS
    Para i <- 1 Hasta n - 1
        Para j <- 1 Hasta n - i
            Si votos[j] < votos[j + 1] Entonces
                // Intercambiar votos
                tempVotos <- votos[j]
                votos[j] <- votos[j + 1]
                votos[j + 1] <- tempVotos
                // Intercambiar candidatos
                tempCandidato <- candidatos[j]
                candidatos[j] <- candidatos[j + 1]
                candidatos[j + 1] <- tempCandidato
            Fin Si
        Fin Para
    Fin Para
	
    Escribir "Candidatos con mayor cantidad de votos:"
    Para i <- 1 Hasta 3
        Escribir candidatos[i], " - Votos: ", votos[i]
    Fin Para
	
    Escribir "Candidatos que no alcanzaron el 10% de los votos:"
    Para i <- 1 Hasta n
        Si votos[i] < minimoVotos Entonces
            Escribir candidatos[i], " - Votos: ", votos[i]
            Escribir "Este candidato queda fuera de las futuras selecciones."
        Fin Si
    Fin Para
	
    // CANDIDATOS ORDENADOS ALFABETICAMENTE 
    Para i <- 1 Hasta n - 1
        Para j <- 1 Hasta n - i
            Si candidatos[j] > candidatos[j + 1] Entonces
                // Intercambiar candidatos
                tempCandidato <- candidatos[j]
                candidatos[j] <- candidatos[j + 1]
                candidatos[j + 1] <- tempCandidato
            Fin Si
        Fin Para
    Fin Para
	
    Escribir "Candidatos ordenados alfabéticamente:"
    Para i <- 1 Hasta n
        Escribir candidatos[i]
    Fin Para
	
Fin Algoritmo
