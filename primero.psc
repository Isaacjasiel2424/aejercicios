Algoritmo sin_titulo
	Escribir "Ingrese el primer valor";
	leer valor1;
	
	Escribir "Ingrese el segundo valor";
	leer valor2;
	mensaje = '';
	Si(valor1 == valor2) Entonces
		mensaje  = "Ambos valores son iguales";
	SiNo
		Si(valor1 > valor2) Entonces
			mensaje  = mensaje + " Valor 1 es mayor";
		SiNo
			mensaje = mensaje + " Valor 2 es mayor";
		FinSi
	FinSi
	
	escribir mensaje
FinAlgoritmo
