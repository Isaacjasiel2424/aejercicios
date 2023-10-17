Algoritmo PRACTICA_15_1
	
	//definir las variables y la dimension de los nombres de los corredores y cuantos son 

dimension corredores[10]
dimension nombres[10]
Definir i, L, temp como  entero
Definir nombre_temp, tiempo_temp como  cadena
	
    // se ingresan los 10 nombres continueamente te pide los tiempos 
    Para i = 1 Hasta 10 Hacer
        Escribir "Ingrese el nombre del corredor ", i
        Leer nombres[i]
        Escribir "Ingrese el tiempo del corredor ", i
        Leer corredores[i]
    Fin Para
	
    // se ordenan los corredores dependiendo de su tiempo 
    Para i = 1 Hasta 9 Hacer
        Para L= i + 1 Hasta 10 Hacer
            Si corredores[i] > corredores[L] Entonces
                // Intercambiar tiempos
                tiempo_temp = corredores[i]
                corredores[i] = corredores[L]
                corredores[L] = tiempo_temp
                // Intercambiar nombres
                nombre_temp = nombres[i]
                nombres[i] = nombres[L]
                nombres[L] = nombre_temp
            Fin Si
        Fin Para
    Fin Para
	
    // se muestra los primeros 3 lugares de los 10 corredores 
    Escribir "Los tres primeros lugares son:"
    Para i = 1 Hasta 3 Hacer
        Escribir "Lugar ", i, ": ", nombres[i], " - Tiempo: ", corredores[i]
    Fin Para
	
Fin Algoritmo
