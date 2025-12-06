Algoritmo cantidad_de_letras
	dimension paises[5]
	dimension letras[5]
	
	
	definir i Como Entero
	definir nompaises  Como Caracter
	
	Escribir " ingresasr nombre de los 5 paises:"
	leer nompaises 
	
	para i =1 Hasta 5 Hacer
		Escribir " paises [",i,"]"
		leer paises[i] 
		letras[i]= Longitud(paises[i])
		Escribir paises[i]," ---> ", " cantidad de letras = ", letras[i]
		
		
	FinPara

FinAlgoritmo
