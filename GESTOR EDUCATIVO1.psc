Algoritmo GESTOR_ESCOLAR
	Dimension matriz_estudiantes[5, 5]
    Dimension matriz_carrera[5, 5]
    Dimension matriz_grupo[5, 5]
    Dimension matriz_pagos[6, 6]
    Dimension matriz_ganancias[5] 
	Repetir
		
		Escribir "1. registrar estudiantes"
        Escribir "2. registrar carrera"
        Escribir "3. registrar grupo"
        Escribir "4. registrar pagos"
        Escribir "5. registrar becas"
        Escribir "6. registrar maestro"
        Escribir "7. Ver registro de estudiantes"
        Escribir "8. Ver registro de maestros"
        Escribir "9. Ver registro de grupos"
		Escribir "10.ver carrera"
        Escribir "11. Salir"
        Escribir "Ingrese la opción deseada: "
        Leer opcion
		Segun opcion Hacer
			1:
				Escribir "registrar estudiante"
			2:
				i = 1
				Mientras matriz_carrera[i, 1] <> "" Y i <= 4 Hacer
                    i = i + 1
                FinMientras
				Escribir "Nombre de la carrera"
				leer matriz_carrera[i, 1]
				
                
			3:
				i = 1
				Mientras matriz_carrera[i, 1] <> "" Y i <= 4 Hacer
                    i = i + 1
                FinMientras
				Escribir "Numero de grupo"
				leer matriz_grupo[i, 1]
			4:
				
			5: 
				i = 1
				Mientras matriz_carrera[i, 1] <> "" Y i <= 4 Hacer
                    i = i + 1
                FinMientras
				Escribir "Numero de grupo"
				leer matriz_grupo[i, 1]
				
				
			10: 
				i = 1
				Mientras matriz_carrera[i, 1] <> "" Y i <= 4 Hacer
                    
					Escribir " nombre de la carrea: " , matriz_carrera[i, 1]
					i = i + 1
                FinMientras
				
				
		FinSegun
		
	Hasta que opcion = 11
	
	
FinAlgoritmo
