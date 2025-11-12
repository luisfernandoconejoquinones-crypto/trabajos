Algoritmo Incentivos_Operario
	Definir nombre Como Cadena
	Definir lunes, martes, miercoles, jueves, viernes, sabado, total, promedio Como Real
	
	Escribir "Ingrese el nombre del operario:"
	Leer nombre
	
	Escribir "Ingrese la producción del día lunes:"
	Leer lunes
	Escribir "Ingrese la producción del día martes:"
	Leer martes
	Escribir "Ingrese la producción del día miércoles:"
	Leer miercoles
	Escribir "Ingrese la producción del día jueves:"
	Leer jueves
	Escribir "Ingrese la producción del día viernes:"
	Leer viernes
	Escribir "Ingrese la producción del día sábado:"
	Leer sabado
	
	total <- lunes + martes + miercoles + jueves + viernes + sabado
	promedio <- total / 6
	
	Si promedio >= 100 Entonces
		Escribir "El operario ", nombre, " durante la semana su producción fue de ", promedio, " unidades y tiene derecho a recibir incentivos."
	Sino
		Escribir "El operario ", nombre, " durante la semana su producción fue de ", promedio, " unidades y no tiene derecho a recibir incentivos."
	FinSi
FinAlgoritmo


