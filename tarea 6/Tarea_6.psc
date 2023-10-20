Algoritmo Tarea_6
	// DEFINIMOS LAS VARIABLES Y LOS VECTORES
   dimension precios[5] 
    dimension ventas[4, 5] 
    dimension cantidades_totales[5] 
	dimension  recaudacion_sucursal[4] 
	dimension cliente_mas_compra[4] 
	
    Definir cantidad_sucursal2 Como Entero
    Definir cantidad_articulo3_sucursal1 Como Entero
    Definir recaudacion_total Como Real
    Definir mayor_recaudacion_sucursal Como Entero
   
	// AQUI TE PIDE EL PRECIO DE LOS ARTICULOS 
    Para i = 1 Hasta 5
        Escribir "Ingrese el precio del artículo ", i
        Leer precios[i]
    FinPara
	
	// AQUI PIDE LAS VENTAS DEL ARTICULO EN LA SUCURSAL
	// TE PIDE LA CANTIDAD EN CADA SUCURSAL
    Para i = 1 Hasta 4
        Para j = 1 Hasta 5
            Escribir "Ingrese la cantidad de ventas del artículo ", j, " en la sucursal ", i
            Leer ventas[i, j]
            cantidades_totales[j] <- cantidades_totales[j] + ventas[i, j]
        FinPara
    FinPara
	
    cantidad_sucursal2 <- 0
    cantidad_articulo3_sucursal1 <- 0
    mayor_recaudacion_sucursal <- 1
    cliente_mas_compra[1] <- 0
    cliente_mas_compra[2] <- 0
    cliente_mas_compra[3] <- 0
    cliente_mas_compra[4] <- 0
	
    Para i = 1 Hasta 4
        recaudacion_sucursal[i] <- 0
        Para j = 1 Hasta 5
            recaudacion_sucursal[i] <- recaudacion_sucursal[i] + (precios[j] * ventas[i, j])
            Si i = 2 Entonces
                cantidad_sucursal2 <- cantidad_sucursal2 + ventas[i, j]
            FinSi
            Si i = 1 Y j = 3 Entonces
                cantidad_articulo3_sucursal1 <- ventas[i, j]
            FinSi
            Si ventas[i, j] > cliente_mas_compra[i] Entonces
                cliente_mas_compra[i] <- ventas[i, j]
            FinSi
            Si recaudacion_sucursal[i] > recaudacion_sucursal[mayor_recaudacion_sucursal] Entonces
                mayor_recaudacion_sucursal <- i
            FinSi
        FinPara
    FinPara
	
    recaudacion_total <- 0
    Para i = 1 Hasta 4
        recaudacion_total <- recaudacion_total + recaudacion_sucursal[i]
    FinPara
	
	// AQUI SALE LAS CANTIDADES TOTALES DE CADA ARTICULO DE CADA SUCURSAL
    Escribir "Cantidades totales de cada artículo:"
    Para i = 1 Hasta 5
        Escribir "Artículo ", i, ": ", cantidades_totales[i]
    FinPara
	
	// SALE LA CANTIDAD DE ARTICULOS EN LA SUCURSAL 2 
    Escribir "Cantidad de artículos en la sucursal 2: ", cantidad_sucursal2
	// CANTIDAD DEL ARTICULO 3 EN LA SUCURSAL 1 
    Escribir "Cantidad del artículo 3 en la sucursal 1: ", cantidad_articulo3_sucursal1
	
	// AQUI SALE LA RECAUDACION DE CADA SUCURSAL 
    Escribir "Recaudación total por cada sucursal:"
    Para i = 1 Hasta 4
        Escribir "Sucursal ", i, ": $", recaudacion_sucursal[i]
    FinPara
	
	// AQUI SALE LAS RECAUDACIONES TOTALES DE LA EMPRESA 
	// YA SUMADAS TODAS LAS RECAUDACIONES DE TODAS LAS SUCURSALES 
    Escribir "Recaudación total de la empresa: $", recaudacion_total
	// SALE LA SUCURSAL CON MAYOR RECAUDACION 
    Escribir "Sucursal con mayor recaudación: Sucursal ", mayor_recaudacion_sucursal
    Escribir "Clientes que más compran por sucursal:"
    Para i = 1 Hasta 4
        Escribir "Sucursal ", i, ": ", cliente_mas_compra[i], " unidades"
    FinPara
	
FinAlgoritmo
