Algoritmo PorcentajeEstudios
	
    Definir opcion, total_personas Como Entero
    Definir primaria, secundaria, tecnica, profesional, posgrado Como Entero
	
    primaria = 0
    secundaria = 0
    tecnica = 0
    profesional = 0
    posgrado = 0
    total_personas = 0
	
    Escribir "Encuesta de nivel educativo"
    Escribir "Digite 1 para primaria"
    Escribir "Digite 2 para secundaria"
    Escribir "Digite 3 para carrera técnica"
    Escribir "Digite 4 para estudios profesionales"
    Escribir "Digite 5 para posgrado"
    Escribir "Digite 0 para terminar la encuesta"
	
    Repetir
        Escribir "Ingrese nivel educativo de la persona (0 para salir):"
        Leer opcion
		
        Si opcion <> 0 Entonces
            total_personas = total_personas + 1
        FinSi
		
        Segun opcion Hacer
             1:
                primaria = primaria + 1
             2:
                secundaria = secundaria + 1
             3:
                tecnica = tecnica + 1
             4:
                profesional = profesional + 1
            5:
                posgrado = posgrado + 1
        FinSegun
		
    Hasta Que opcion = 0
	
    Si total_personas > 0 Entonces
        Escribir "Porcentaje con estudios de primaria: ", (primaria * 100) / total_personas, "%"
        Escribir "Porcentaje con estudios de secundaria: ", (secundaria * 100) / total_personas, "%"
        Escribir "Porcentaje con estudios técnicos: ", (tecnica * 100) / total_personas, "%"
        Escribir "Porcentaje con estudios profesionales: ", (profesional * 100) / total_personas, "%"
        Escribir "Porcentaje con estudios de posgrado: ", (posgrado * 100) / total_personas, "%"
    SiNo
        Escribir "No se encuestó a ninguna persona."
    FinSi
	
FinAlgoritmo
