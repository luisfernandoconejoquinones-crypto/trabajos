Algoritmo ventas_
    Definir ventas Como Real
    Dimension ventas[7]
	
    Definir i Como Entero
    Definir total, promedio Como Real
	
    total <- 0
	
    Para i <- 1 Hasta 7 Hacer
        Escribir "Ingrese las ventas del dia ", i, ":"
        Leer ventas[i]
        total <- total + ventas[i]
    FinPara
	
    promedio <- total / 7
	
    Escribir "Total de ventas: ", total
    Escribir "Promedio de ventas: ", promedio
FinAlgoritmo
