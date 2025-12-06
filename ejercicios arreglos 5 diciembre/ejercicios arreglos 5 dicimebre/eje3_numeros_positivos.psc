Algoritmo numeros_positivos 
	dimension numeros[10]
	dimension suma[10]
	
	definir num Como Entero
	definir i,decena,unidades Como Entero
	
	Escribir " ingresar  numeros positivos de dos digitos"
	Leer num
	
	para i =1 Hasta 10 Hacer
		escribir "numeros[", i , "]"
		Leer numeros[i]
		
		decena= trunc (numeros[i]  /10 )
		unidades=numeros[i] mod 10
		
		suma[i]= decena+unidades
	FinPara
	
	escribir"------------"
	escribir" resultados: "
	para i=1 Hasta 10 Hacer
		escribir numeros[i],"----> al suma de los digitos ingresado es  : ",suma[i]
		
		
	FinPara
	
	
FinAlgoritmo
