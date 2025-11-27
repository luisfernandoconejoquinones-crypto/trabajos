Algoritmo PrecioHuevos
	Definir n, i Como Entero
	Definir peso, altura, huevos, calidad, sumaCalidad, promedio Como Real
	
	sumaCalidad = 0
	
	Escribir "¿Cuántas gallinas hay en la granja ?"
	Leer n
	
	Para i = 1 Hasta n
		Escribir "Gallina ", i
		Escribir "Ingrese el peso:"
		Leer peso
		
		Escribir "Ingrese la altura:"
		Leer altura
		
		Escribir "Ingrese el número de huevos que pone:"
		Leer huevos
		
		calidad = (peso * altura) / huevos
		
		sumaCalidad = sumaCalidad + calidad
	FinPara
	
	promedio = sumaCalidad / n
	
	
	Si promedio >= 15 Entonces
		precio = 1.2 * promedio
	SiNo
		Si promedio > 8 Entonces
			precio = 1.0 * promedio
		SiNo
			precio = 0.80 * promedio
		FinSi
	FinSi
	
	Escribir "----------------------------------"
	Escribir "Promedio de calidad: ", promedio
	Escribir "Precio sugerido por kilo de huevos: $", precio
FinAlgoritmo
