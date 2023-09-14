Algoritmo sin_titulo
	Escribir "Ingrese el primer valor";
	leer valor1;
	
	si(valor1 <= 0)Entonces
		Escribir "Error no se pueden numero menores que uno";
	SiNo
		valorAlCuadrado =  valor1 * valor1;
		valorRaizCuadrada = RC(valor1);
		
		Escribir  "El valor al cuadrado de "
		Escribir valor1;
		Escribir  "Es "
		Escribir valorAlCuadrado;
		Escribir  "Y su raiz cuadrada es"
		Escribir valorRaizCuadrada;
	FinSi
FinAlgoritmo
