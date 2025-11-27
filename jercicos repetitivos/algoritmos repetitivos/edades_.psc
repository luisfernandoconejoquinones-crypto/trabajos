Algoritmo ClasificacionEdades
	
    Definir i, edad Como Entero
    Definir ninos, jovenes, adultos, ancianos Como Entero
	
    ninos = 0
    jovenes = 0
    adultos = 0
    ancianos = 0
	
    Para i = 1 Hasta 10 Con Paso 1 Hacer
		
        Escribir "Ingrese la edad de la persona ", i, ": "
        Leer edad
		
        Si edad < 15 Entonces
            ninos = ninos + 1
			
        Sino Si edad >= 15 Y edad < 18 Entonces
				jovenes = jovenes + 1
				
			Sino Si edad >= 18 Y edad < 70 Entonces
					adultos = adultos + 1
					
				Sino
					ancianos = ancianos + 1
				FinSi
		finsi		
	
	FinSi
finpara

			Escribir ""
			Escribir "RESULTADOS:"
			Escribir "Niños: ", ninos
			Escribir "Jóvenes: ", jovenes
			Escribir "Adultos: ", adultos
			Escribir "Ancianos: ", ancianos
			
FinAlgoritmo