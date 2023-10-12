Algoritmo practicaNum_13_vectores
	Definir n, costoTotal Como Real
    Escribir "Ingrese la cantidad de productos: "
    Leer n
    
    // vectores de productos y precios 
    Dimension productos[n], precios[n]
    
    // costo total
    costoTotal <- 0.0
    
    // aqui se ingresa el nombre del producto y sus precios
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el nombre del producto ", i, ": "
        Leer productos[i]
        Escribir "Ingrese el precio del producto ", i, ": "
        Leer precios[i]
    FinPara
    
    // Calcular el costo total
    Para i <- 1 Hasta n Hacer
        costoTotal <- costoTotal + precios[i]
    FinPara
    
    // Mostrar la lista de productos y el costo total
    Escribir "Lista de productos y precios:"
    Para i <- 1 Hasta n Hacer
        Escribir productos[i], ": ", precios[i]
    FinPara
    Escribir "Costo total a pagar: ", costoTotal
FinAlgoritmo
