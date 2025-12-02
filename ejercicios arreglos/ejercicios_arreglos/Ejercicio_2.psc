Algoritmo nombres_ciudades
    Definir ciudades Como Cadena
    Dimension ciudades[8]
	
    Definir i Como Entero
	
    Para i <- 1 Hasta 8 Hacer
        Escribir "Ingrese la ciudad ", i, ":"
        Leer ciudades[i]
    FinPara
	
    Escribir "Ciudades en orden inverso:"
    Para i <- 8 Hasta 1 Con Paso -1 Hacer
        Escribir ciudades[i]
    FinPara
FinAlgoritmo
