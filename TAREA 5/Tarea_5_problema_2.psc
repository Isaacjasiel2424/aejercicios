Algoritmo Tarea_5_problema_2
	// se definen las dimensiones de los vectores A , B Y C.
    dimension A[45]
	dimension  B[45]
	dimension  C[45] 
    Definir i Como Entero
	// Aqui se pide llenar los 45 elementos del vector A 
    Escribir "Llenar el vector A con 45 elementos:"
    Para i = 1 Hasta 45
        Escribir "Ingrese el elemento ", i, " de A: "
        Leer A[i]
    FinPara
	//Se pide llenar el vector B
    Escribir "Llenar el vector B con 45 elementos:"
    Para i = 1 Hasta 45
        Escribir "Ingrese el elemento ", i, " de B: "
        Leer B[i]
    FinPara
	// Se suman la posicion 1 del vector A y B y asi susesivamente con todas las posiciones para que el resultado salga en un tercer vector que es el vector C.
    Para i = 1 Hasta 45
        C[i] = A[i] + B[i]
    FinPara
	// Aqui sale el resultado de las sumas en el vector C.
    Escribir "El vector C resultante es:"
    Para i = 1 Hasta 45
        Escribir C[i]
    FinPara
	
FinAlgoritmo

	

