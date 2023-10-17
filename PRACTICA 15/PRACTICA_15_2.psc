Algoritmo PRACTICA_15_2
	//DEFINIR LAS VARIABLES Y LA DIMENSION 
   dimension vector[10] 
    Definir indice como Entero
    Definir numero como Entero
	// SE PIDEN INGRESAR LOS NUMEROS SIN SER IGUALES
    Para indice = 1 Hasta 10
        Escribir "Introduce el número ", indice, ": "
        Leer numero
        // SI EL NUMERO ES IGUAL A UNO YA INGRESADO SALDRA EL SIGUIENTE MESAJE
        Si indice > 1 Entonces
            Repetir
                EsRepetido = Falso
                Para i = 1 Hasta indice - 1
                    Si numero = vector[i] Entonces
                        Escribir "El número ya ha sido ingresado, por favor, ingresa uno diferente: "
                        Leer numero
                        EsRepetido = Verdadero
                    FinSi
                FinPara
            Hasta Que EsRepetido = Falso
        FinSi
        
        vector[indice] = numero
    FinPara
    // AL FINAL DE INGRESAR TODOS LOS NUMEROS SIN REPETIR SALEN TODOS LOS NUMEROS INGRESADOS
    Escribir "Los números ingresados son:"
    Para indice = 1 Hasta 10
        Escribir vector[indice]
    FinPara
	
FinAlgoritmo
