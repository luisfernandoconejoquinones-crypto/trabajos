Algoritmo leer_numeros
    Definir numeros, i Como Entero
    Dimension numeros[10]
	
    Para i <- 1 Hasta 10 Hacer
        Escribir "Ingrese numero ", i, ":"
        Leer numeros[i]
    FinPara
	
    Escribir "Numeros pares:"
    Para i <- 1 Hasta 10 Hacer
        Si numeros[i] % 2 = 0 Entonces
            Escribir numeros[i]
        FinSi
    FinPara
FinAlgoritmo
