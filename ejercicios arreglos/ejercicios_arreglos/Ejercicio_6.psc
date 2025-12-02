Algoritmo matriz_nombre_edades
    Definir nombres Como Cadena
    Definir edades Como Entero
    Dimension nombres[5]
    Dimension edades[5]
	
    Definir i, mayorEdad, indiceMayor Como Entero
	
    Para i <- 1 Hasta 5 Hacer
        Escribir "Ingrese el nombre de la persona ", i, ":"
        Leer nombres[i]
		
        Escribir "Ingrese la edad de ", nombres[i], ":"
        Leer edades[i]
    FinPara
	
    mayorEdad <- edades[1]
    indiceMayor <- 1
	
    Para i <- 2 Hasta 5 Hacer
        Si edades[i] > mayorEdad Entonces
            mayorEdad <- edades[i]
            indiceMayor <- i
        FinSi
    FinPara
	
    Escribir "La persona de mayor edad es ", nombres[indiceMayor], " con ", mayorEdad, " años."
FinAlgoritmo
