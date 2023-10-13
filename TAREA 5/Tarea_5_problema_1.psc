Algoritmo Tarea_5_problema_1
	definir x,numero_mayor,vector,posicion Como Entero
	dimension vector[10]
	para x=1 hasta 10 con paso 1 hacer 
		Escribir "ingrese el numero", x 
		leer vector[x]
		
		
		
	FinPara
	para x=1 hasta 10 con paso 1 hacer 
		si x==1 Entonces
			numero_mayor<-vector[x]
			posicion<-x
		sino 
			si vector[x]> numero_mayor entonces 
				numero_mayor=vector[x]
				posicion<-x
				
			FinSi
		FinSi
	FinPara
	Escribir "El numero es mayores: ", numero_mayor
	Escribir "Esta en la posicion: ", posicion
	si (numero_mayor>999) y (numero_mayor<5001) Entonces
		Escribir "se cumplio la condicion"
		para i=10 Hasta 1
			Escribir "",vector[i]
			
		FinPara
	sino 
		Escribir "no se cumplio la condicion" 
		
	FinSi
FinAlgoritmo
