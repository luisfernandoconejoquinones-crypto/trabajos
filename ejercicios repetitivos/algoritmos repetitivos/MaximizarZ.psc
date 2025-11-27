Algoritmo MaximizarZ

    Definir x1, y1, seta Como Real
    Definir mejorX, mejorY, mejorZ Como Real
    Definir i Como Entero
	

    mejorZ <- -999999
	
	definir equis, ye Como Entero

    Para i <- 1 Hasta 100 Hacer
        

        x1 <- Aleatorio(-5, 5)
        y1 <- Aleatorio(-5, 5)
		
		equis <- (x1 *x1)
		ye <- (y1 * y1)

        seta <- equis + ye
		

        Si seta > mejorZ Entonces
            mejorZ <- seta
            mejorX <- x1
            mejorY <- y1
        FinSi
		
    FinPara
	

    Escribir "---------------------------------------------"
    Escribir "Mejor valor encontrado:"
    Escribir "x = ", mejorX
    Escribir "y = ", mejorY
    Escribir "Z = ", mejorZ
    Escribir "---------------------------------------------"
	
FinAlgoritmo
