Algoritmo practica6
	DEFINIR variableArrayNombre COMO texto
	DEFINIR variableArrayCalificacion COMO numero
	DEFINIR variableArrayUnidad COMO texto
	
	Dimension variableArrayNombre[5];
	Dimension variableArrayCalificacion[5];
	Dimension variableArrayunidad[5];
	variableArrayNombre[1] = 'Edwin'; variableArrayCalificacion[1] = 9; variableArrayUnidad[1] = " unidad 8";
	variableArrayNombre[2] = 'Galia'; variableArrayCalificacion[2] = 8; variableArrayunidad[2] = "unidad 8";
	variableArrayNombre[3] = 'Leticia'; variableArrayCalificacion[3] = 10; variableArrayUnidad[3] = "unidad 9";
	variableArrayNombre[4] = 'Renata'; variableArrayCalificacion[4] =5; variableArrayUnidad[4] = "unidad 10";
	variablearrayNombre[5]= 'Issac'; variableArrayCalificacion[5] = 6; variablearrayUnidad[5] = "unidad 10";
	
	
	
	contador= 1 
	suma=0 
	unidadMayorCalificacion=""
	alumnoMayorCalificacionNumero=0 
	alumnoMayorCalificacion=""
	mientras contador <= 5 Hacer
		si (alumnoMayorCalificacionNumero<variableArrayCalificacion[contador]) Entonces
			alumnoMayorCalificacion=variablearrayNombre[contador] 
			alumnoMayorCalificacionNumero=variableArrayCalificacion[contador] 
			unidadMayorCalificacion=variablearrayUnidad[contador]
			
			
		FinSi
		
		//escribir variableArrayNombre[contador] 
		
		//escribir variableArrayCalificacion[contador]
		//escribir variablearrayUnidad[contador]
		suma=variableArrayCalificacion[contador] + suma 
		//Escribir suma 
		
		
		
		contador = contador +1;	
	FinMientras
	escribir" calificacion mas alta"
	escribir alumnoMayorCalificacionNumero
	escribir " el alumno con mayor promedio fue" 
	escribir alumnoMayorCalificacion
	escribir" unidad con mayor calificacion" 
	escribir unidadMayorCalificacion
	Escribir " media grupal" 
	Escribir suma/5 
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
