Algoritmo practica_10_segundo
	//programar clave de acceso 
	Definir clave Como Entero
	Definir intentos Como Entero
	intentos<-0 
	
	
	//proceso 
	repetir 
		intentos<-intentos+1
		
		Escribir sin saltar " acceda clave de acceso" 
		leer clave;
		
	Hasta Que(clave = 352) o (clave=259) o (clave=569) o (intentos=3 ) 

	si ( intentos=3) y (clave <> 352) y (clave<>259) y (clave<>569) Entonces
		
		Escribir "demasiados intentos solo tines 3"  
	sino 
		Escribir "acceso permitido bienvenido" 
		
	
	
	
		
	FinSi
	
	
	
FinAlgoritmo
 