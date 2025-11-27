Algoritmo ContarVocales
	Definir texto Como Cadena
	Definir i, vocales Como Entero
	
	Escribir "Ingresa un texto:"
	Leer texto
	

	
	vocales = 0
	
	Para i = 1 Hasta Longitud(texto)
		Si Subcadena(texto,i,i) = "a" O Subcadena(texto,i,i) = "e" O Subcadena(texto,i,i) = "i" O Subcadena(texto,i,i) = "o" O Subcadena(texto,i,i) = "u" Entonces
			vocales = vocales + 1
		FinSi
	FinPara
	
	Escribir "Número de vocales: ", vocales
FinAlgoritmo
