Algoritmo practica_8 
	//programar clave de acceso 
	Definir respuesta Como Caracter
	
	
	// declaracion de variables 
	Definir usuario Como Caracter
	Definir clave Como Entero
	Definir flag Como Caracter
	flag="n" 
	
	//entrada de datos 
	
	//proceso 
	
	//salida 
	Repetir
		si (flag=="n")
			Escribir sin saltar " ingresar clave de acceso" 
			leer clave; 
			
			
			
			
		FinSi
		
		si (clave = 123456) entonces 
			flag="s"
			
			Escribir " acceso permitido"
			//si la clave fue correcta se mostraran diferentes opciones 
			Escribir " que se va a realizar"
			escribir " 1 sumar" 
			escribir " 2 restar"
			escribir " 3 multiplicar"
			escribir " 4 dividir"
			leer b; 
			si (b==1) entonces 
				escribir "escribe un valor"
				leer c;
				escribir " escribe el segundo valor"
				leer d 
				e<- c+d 
				escribir " la suma de" , c , "+" , d , "=" , e 
				
			FinSi
			si (b==2) entonces 
				escribir "escribe un valor"
				leer c;
				escribir " escribe el segundo valor"
				leer d 
				e<- c-d 
				escribir " la resta de" , c , "-" , d , "=" , e 
				
				
			FinSi
			si (b==3) entonces 
				escribir "escribe un valor"
				leer c;
				escribir " escribe el segundo valor"
				leer d 
				e<- c*d 
				escribir " la multiplicacion de" , c , "* " , d , "=" , e 
				
				
			FinSi
			si (b==4) entonces 
				escribir "escribe un valor"
				leer c;
				escribir " escribe el segundo valor"
				leer d 
				e<- c/d 
				escribir " la division  de" , c , "/ " , d , "=" , e
				
			FinSi
			Escribir "desea realizar otra operacion" 
			Leer respuesta 
			
			
			
			
		sino 
			
			escribir" acceso denegado"
			
			
			
			
			 
			
			
		FinSi
	Hasta Que respuesta ="n" ;
	
	

	
FinAlgoritmo
