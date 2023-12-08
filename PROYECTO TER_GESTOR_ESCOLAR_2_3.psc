Algoritmo GESTOR_ESCOLAR_2_2
	///matrices donde se guarda toda informacion
    Dimension matriz_estudiantes[100, 100]
    Dimension matriz_carrera[100]
    Dimension matriz_grupo[100]
    Dimension matriz_maestros[100]
	
	
	/// Este es el menu 
    Repetir
		Escribir "1. Registrar estudiantes"
		Escribir "2. Registrar grupo"
		Escribir "3. Registrar maestro"
		Escribir "4. Ver registro de estudiantes"
		Escribir "5. Ver registro de maestros"
		Escribir "6. Ver registro de grupos"
		Escribir "7. Salir"
		Escribir "Ingrese la opción deseada: "
		Leer opcion
		
		Repetir
			/// Esto sirve para que no pueda ingresar otra cosa que no sean de las opciones 
			/// si no pone alguna de las opciones del menu saldra un mensaje de error 
			v=0
			Para c=0 Hasta Longitud(opcion)-1
				letra=Subcadena(opcion,c,c)
				
				Si letra <= "/" o letra >= ":"  Entonces
					v=v+1
				FinSi
			/// Al salir el mensaje de error se repetira el menu 
			FinPara
			Si v<>0 Entonces
				Escribir "Valor inválido"
				Escribir "1. Registrar estudiantes"
				Escribir "2. Registrar grupo"
				Escribir "3. Registrar maestro"
				Escribir "4. Ver registro de estudiantes"
				Escribir "5. Ver registro de maestros"
				Escribir "6. Ver registro de grupos"
				Escribir "7. Salir"
				Escribir "Ingrese la opción deseada: "
				Leer opcion
			FinSi
			
		Hasta Que v=0
		Para i = 1 Hasta 100 Con Paso 1 Hacer
			Escribir("")
		Fin Para
        Segun ConvertirANumero(opcion) Hacer
			/// Cada opcion te pide preguntas para guardar informacion 
            1:
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
                i = 1
                Mientras matriz_estudiantes[i, 1] <> "" Y i <= 100 Hacer
                    i = i + 1
                FinMientras
				
				/// Al registrar un estudiante te pedira si ya pago o si tiene alguna beca
				/// si ya pago y no tiene beca se registra y si no pago pero tiene beca se registra 
				/// pero si no tiene ninguna de las dos sale un mensaje que no puede registrarse 
				
                Escribir "Ingrese nombre del estudiante"
                Leer nombre
                Escribir "Ingrese carrera del estudiante"
                Leer carrera
                Escribir "Ingrese grupo del estudiante"
                Leer grupo
                Escribir "¿El pago ya está realizado?"
                Leer pago
				Escribir "¿tienes beca?"
				leer beca
				si ((beca =="si" y pago =="si") o (beca =="si" y pago =="no") o (beca =="no" y pago =="si"))
					matriz_estudiantes[i, 1] = nombre
					matriz_estudiantes[i, 2] = carrera
					matriz_estudiantes[i, 3] = grupo
					matriz_estudiantes[i, 4] = pago
					matriz_estudiantes[i, 5] = beca
				SiNo
					Escribir "No se puede registrar"
				FinSi
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
				
            2:
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
                i = 1
                Mientras matriz_grupo[i] <> "" Y i <= 100 Hacer
                    i = i + 1
                FinMientras
				
				/// El registrar un grupo pones la unformacion del grupo
				/// y llegara a una pregunta de cuantos estudiantes hay en ese grupo
				/// tendras que poner la cantidad y te preguntara la informacion de esa cantidad de estudiantes 
				/// preguntandote la misma preguntas de que si ya pago o si tiene beca y debera tener alguna de esas dos
				/// si no saldra error de que no puede registrarse 
				
                Escribir "Ingrese nombre del grupo"
                Leer matriz_grupo[i]
				
                Escribir "¿Cuántos estudiantes hay en este grupo?"
                Leer cantidad_estudiantes
				grupo = matriz_grupo[i]
                Para j desde 1 hasta cantidad_estudiantes Hacer
					
					Escribir "Ingrese nombre del estudiante"
					Leer nombre
					Escribir "Ingrese carrera del estudiante"
					Leer carrera
					Escribir "Ingrese grupo del estudiante"
					Leer grupo
					Escribir "¿El pago ya está realizado?"
					Leer pago
					Escribir "¿tienes beca?"
					leer beca
					si ((beca =="si" y pago =="si") o (beca =="si" y pago =="no") o (beca =="no" y pago =="si"))
						matriz_estudiantes[j, 1] = nombre
						matriz_estudiantes[j, 2] = carrera
						matriz_estudiantes[j, 3] = grupo
						matriz_estudiantes[j, 4] = pago
						matriz_estudiantes[j, 5] = beca
					SiNo
						Escribir "No se puede registrar"
					FinSi
					
					
					
                    i = i + 1
                FinPara
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
				
            3:
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
                i = 1
                Mientras matriz_maestros[i] <> "" Y i <= 100 Hacer
                    i = i + 1
                FinMientras
				
				/// Al registrar un maestro te pedira su nombre y en cuantos grupos esta cierto maestro
				/// pedira los nombres de dichos grupos 
				/// y esos grupos se guardaran para mostrarse en la matriz
				
				
                Escribir "Ingrese nombre del maestro"
                Leer matriz_maestros[i]
				
                Escribir "¿En cuántos grupos está asignado este maestro?"
                Leer cantidad_grupos
                Para j desde 1 hasta cantidad_grupos Hacer
                    Escribir "Ingrese nombre del grupo ", j, " asignado al maestro"
                    Leer nombre_grupo
                   
                    matriz_grupo[i] = nombre_grupo
                    i = i + 1
                FinPara
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
				
            4:   
				///impresiones de matrices 
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
                Para j desde 1 hasta 99 Hacer
                    Si matriz_estudiantes[j, 1] <> "" Entonces
                        Escribir "Nombre: ", matriz_estudiantes[j, 1]
                        //Escribir "Carrera: ", matriz_estudiantes[j, 2]
                        Escribir "Grupo: ", matriz_estudiantes[j, 3]
                        Escribir "Pago realizado: ", matriz_estudiantes[j, 4]
						Escribir "Beca: ", matriz_estudiantes[j, 5]
                        Escribir ""
                    FinSi
                FinPara
				
            5:  
				///impresion
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
                Para j desde 1 hasta 99 Hacer
                    Si matriz_maestros[j] <> "" Entonces
                        Escribir "Nombre del maestro: ", matriz_maestros[j]
                        Escribir ""
                    FinSi
                FinPara
				
				
            6:  
				///impresion 
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
                Para j desde 1 hasta 99 Hacer
                    Si matriz_grupo[j] <> "" Entonces
                        Escribir "Nombre del grupo: ", matriz_grupo[j]
                        Escribir ""
                    FinSi
                FinPara
				
            7:  
				/// El cierre
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					Escribir("")
				Fin Para
				Escribir "Cerrando..."
        FinSegun
		
    Hasta que ConvertirANumero(opcion) = 7
FinAlgoritmo
