Algoritmo PRACTICA_15_4
	
// Declaración de variables

Dimension nombres[100]
Dimension edades[100]
Dimension mayores[100]
mayorEdad <- 0
posicion <- 1
contadorMayores <- 0

// INICIALIZACION DE VARIABLES
nombres[1] <- ""
edades[1] <- 0

// INGRESA LOS NOMBRES Y LAS EDADES  
Mientras nombres[posicion] <> "*"
    Escribir "Ingrese el nombre del alumno (o * para salir): "
    Leer nombres[posicion]
    
    Si nombres[posicion] <> "*"
        Escribir "Ingrese la edad del alumno: "
        Leer edades[posicion]
        
        // VERIFICAR SI EL ALUMNO ES MAYOR DE EDAD 
        Si edades[posicion] >= 18
            Escribir "El alumno ", nombres[posicion], " es mayor de edad y se encuentra en la posición ", posicion
            contadorMayores <- contadorMayores + 1
        Fin Si
        
        // VERIFICAR SI ES EL ALUMNO CON MAYOR EDAD QUE LAS INGRESADAS 
        Si edades[posicion] > mayorEdad
            mayorEdad <- edades[posicion]
            mayores[1] <- nombres[posicion]
        Fin Si
        
        posicion <- posicion + 1
    Fin Si
Fin Mientras

// AQUI SE MUESTRAN LOS LUMNOS CON MAYOR EDAD 
Escribir "Cantidad de alumnos mayores de edad: ", contadorMayores

// AQUI SE MUESTRA EL ALUMNO CON LA EDAD MAS ALTA 
Escribir "El alumno de mayor edad es ", mayores[1], " con ", mayorEdad, " años."

Fin Algoritmo
