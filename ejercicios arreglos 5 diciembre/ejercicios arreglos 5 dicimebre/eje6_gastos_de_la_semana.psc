Algoritmo gostos_de_la_semana
	
	Dimension gastos[7]
	
	definir i,suma Como Entero
	definir promedio Como Real
	
	suma<-0
	
	para i=1 Hasta 7 Hacer
		Escribir"ingrese gastos del dia",i,"-->>"
		Leer gastos[i]
		
		suma<- suma + gastos[i]
	FinPara
	promedio=suma/7
	
	Escribir "el promedio total de gastos de la semana es-->>",promedio
FinAlgoritmo
