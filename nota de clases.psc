Algoritmo Evaluacion_Cualitativa
    Definir nota Como Real
	
    Escribir "Ingrese la nota obtenida (de 0 a 10):"
    Leer nota
	
    Si nota >= 9.5 Entonces
        Escribir "Su evaluación es: Excelente"
    Sino
        Si nota >= 7 Y nota < 9.5 Entonces
            Escribir "Su evaluación es: Bueno"
        Sino
            Si nota >= 5 Y nota < 7 Entonces
                Escribir "Su evaluación es: Regular"
            Sino
                Escribir "Su evaluación es: Deficiente"
            FinSi
        FinSi
    FinSi
FinAlgoritmo

	