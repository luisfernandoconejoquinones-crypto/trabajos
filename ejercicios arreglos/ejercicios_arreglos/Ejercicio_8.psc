Algoritmo dias_ventas
    Definir dias Como Cadena
    Definir ventas Como Real
    Dimension dias[7]
    Dimension ventas[7]
	
    Definir i, indiceMenor Como Entero
    Definir total, promedio, menorVenta Como Real
	
    dias[1] <- "Lunes"
    dias[2] <- "Martes"
    dias[3] <- "Miercoles"
    dias[4] <- "Jueves"
    dias[5] <- "Viernes"
    dias[6] <- "Sabado"
    dias[7] <- "Domingo"
	
    total <- 0
	
    Para i <- 1 Hasta 7 Hacer
        Escribir "Ingrese las ventas de ", dias[i], ":"
        Leer ventas[i]
        total <- total + ventas[i]
    FinPara
	
    promedio <- total / 7
	
    menorVenta <- ventas[1]
    indiceMenor <- 1
	
    Para i <- 2 Hasta 7 Hacer
        Si ventas[i] < menorVenta Entonces
            menorVenta <- ventas[i]
            indiceMenor <- i
        FinSi
    FinPara
	
    Escribir "Total de ventas: ", total
    Escribir "Promedio de ventas: ", promedio
    Escribir "Día con menor venta: ", dias[indiceMenor], " con ", menorVenta
FinAlgoritmo
