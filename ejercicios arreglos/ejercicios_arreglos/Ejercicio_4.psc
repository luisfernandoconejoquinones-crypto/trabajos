Algoritmo nota_
    Definir notas Como Real
    Dimension notas[5]
	
    Definir i Como Entero
    Definir suma, mayor, menor, promedio Como Real
	
    suma <- 0
	
    Para i <- 1 Hasta 5 Hacer
        Escribir "Ingrese  nota del aprendiz ", i, ":"
        Leer notas[i]
        suma <- suma + notas[i]
    FinPara
	
    mayor <- notas[1]
    menor <- notas[1]
	
    Para i <- 2 Hasta 5 Hacer
        Si notas[i] > mayor Entonces
            mayor <- notas[i]
        FinSi
		
        Si notas[i] < menor Entonces
            menor <- notas[i]
        FinSi
    FinPara
	
    promedio <- suma / 5
	
    Escribir "Nota más alta: ", mayor
    Escribir "Nota más baja: ", menor
    Escribir "Promedio del grupo: ", promedio
FinAlgoritmo
