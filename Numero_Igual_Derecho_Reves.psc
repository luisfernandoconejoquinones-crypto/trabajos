
Algoritmo Numero_Igual_Derecho_Reves
	Definir num, centena, decena, unidad, numInvertido Como Entero
	
	Escribir "Ingrese un número entero de 3 dígitos mayor que 0:"
	Leer num
	
	Si num <= 0 Entonces
		Escribir "Error: el número debe ser positivo."
	Sino
		Si num < 100 O num > 999 Entonces
			Escribir "Error: debe ingresar un número de tres dígitos (100 a 999)."
		Sino
			centena <- Trunc(num / 100)
			decena <- Trunc((num - (centena * 100)) / 10)
			unidad <- num - (centena * 100 + decena * 10)
			
			numInvertido <- (unidad * 100) + (decena * 10) + centena
			
			Si num = numInvertido Entonces
				Escribir "El número ", num, " es igual al derecho y al revés."
			Sino
				Escribir "El número ", num, " no es igual al derecho y al revés."
			FinSi
		FinSi
	FinSi
FinAlgoritmo
