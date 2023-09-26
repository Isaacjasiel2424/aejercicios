Algoritmo practica_10quinto
	Escribir "cuantos numeros desea ingresar" 
	leer n
	definir contador Como Entero
	Definir producto Como Entero
	producto=1
	definir suma Como Entero
	Definir promedio Como Entero
	definir cantidad Como Entero
	
	
	Repetir
		
		Escribir " ingresar numero"
		leer respuesta
		si(respuesta%4==0) Entonces
		 	promedio=promedio+respuesta
			cantidad=cantidad+1
			
			
			
		FinSi
		si(respuesta>16) Entonces
			si(respuesta%2==1) Entonces
				suma=suma+respuesta 
				
			FinSi
		FinSi
		contador=contador+1
		si(respuesta<25) Entonces
			si(respuesta%2==0) Entonces
				producto=producto*respuesta 
				
			FinSi
		FinSi
	Hasta Que contador>=n 
	Escribir " el valor de todos los numeros pares y menores a 25 es " , producto 
	Escribir " suma de los impares mayores a 16 es " , suma 
	Escribir " el promedio de los multiplos de 4 es " , (promedio/cantidad)
	
	
	
	
	
	
	
FinAlgoritmo
