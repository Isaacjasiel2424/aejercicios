Algoritmo tarea_num_4
	
		Definir N, i, contador Como Entero
		Definir vector Como Entero
		// inicia el contador de múltiplos de 6
		contador <- 0  
		
		Escribir "Ingrese la cantidad de elementos (N): "
		Leer N
		
		Para i <- 1 Hasta N Hacer
			Escribir "Ingrese el elemento ", i, ": "
			Leer vector
			Si vector MOD 6 = 0 Entonces
				Escribir vector, " es múltiplo de 6."
				contador <- contador + 1
			FinSi
		FinPara
		
		Escribir "El número de elementos múltiplos de 6 es: ", contador
		Escribir "Los elementos que son múltiplos de 6 son: ", N
		
		Para i <- 1 Hasta N Hacer
			Si vector MOD 6 = 0 Entonces
				Escribir vector
			FinSi
		FinPara
		
FinAlgoritmo


