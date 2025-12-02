Algoritmo mayores_a_cien
    Definir matriz Como Entero
    Dimension matriz[4,4]
	
    Definir i, j, contador Como Entero
	
    contador <- 0
	
    Para i <- 1 Hasta 4 Hacer
        Para j <- 1 Hasta 4 Hacer
            Escribir "Ingrese el valor [", i, ",", j, "]:"
            Leer matriz[i,j]
            Si matriz[i,j] > 100 Entonces
                contador <- contador + 1
            FinSi
        FinPara
    FinPara
	
    Escribir "Cantidad de valores mayores a 100: ", contador
FinAlgoritmo
