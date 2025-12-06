Algoritmo suma_de_arreglos
	
    dimension  numA[5]
	dimension numB[5]
	dimension res[5]
    Definir i Como Entero
	definir numA,numB,res Como Entero
    Escribir " digite  los números para los arreglos numA y numB:"
	
    Para i = 1 Hasta 5
        Escribir "numA[", i, "] = "
        Leer numA[i]
		
        Escribir "numB[", i, "] = "
        Leer numB[i]
		
        res[i] = numA[i] + numB[i]
    Fin Para
	
    Escribir "--------------" 
	
    Escribir "RESULTADOS"
    Para i = 1 Hasta 5
        Escribir "numA[", i, "] = ", numA[i], "  numB[", i, "] = ", numB[i], "   res[", i, "] = ", res[i]
    Fin Para
	
FinAlgoritmo
