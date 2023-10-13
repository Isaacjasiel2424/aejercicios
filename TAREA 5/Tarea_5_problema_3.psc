Algoritmo Tarea_5_problema_3
	// Se definen las dimensiones y las variables 
    dimension X[20] 
    Definir numero, posicion, i como Entero
    Definir encontrado como Logico
    
    
    Para i <- 1 Hasta 20
        X[i] <- Aleatorio(1, 20) 
    FinPara
    
  // Aquie ingresas algun numero para ver si esta en unos de los numeros almacenados que son 20
    Escribir "Ingrese un número a buscar: "
    Leer numero
    
    
    encontrado <- Falso
    
  
    Para i <- 1 Hasta 20
        Si X[i] = numero Entonces
            encontrado <- Verdadero
            posicion <- i
             
        FinSi
    FinPara
    
    // aqui se muestra el resultado si se encuentra el numero ingresado entre los 20 almacenados
    Si encontrado Entonces
        Escribir "El número ", numero, " se encuentra en la posición ", posicion, " del vector."
    Sino
		// este mensaje saldra si el numero ingresado no se encuentra entre los 20 almacenados
        Escribir "NO"
    FinSi
FinAlgoritmo

	

