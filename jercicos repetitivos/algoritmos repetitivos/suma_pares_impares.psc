Algoritmo  Sumar_Pares_Impares
	
    
    Definir num, sumaPares, sumaImpares Como Entero
	
    
    sumaPares <- 0
    sumaImpares <- 0
	

    Escribir "ingrese un número (0 para terminar): "
    Leer num
	
    
    Mientras num <> 0 Hacer
		
        Si num % 2 = 0 Entonces
            sumaPares <- sumaPares + num
        Sino
            sumaImpares <- sumaImpares + num
        FinSi
		
        Escribir "Digitingrese otro número (0 para terminar): "
        Leer num
		
    FinMientras
	
    
    Escribir "la Suma de números pares: ", sumaPares
    Escribir "la Suma de números impares: ", sumaImpares
	
FinAlgoritmo



