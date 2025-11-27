ALGORITMO Elecciones2024
	
    
    Definir voto, cont1, cont2, cont3, contBlanco, contador Como Entero
	
    
    cont1 = 0
    cont2 = 0
    cont3 = 0
    contBlanco = 0
    contador = 0      
	
    
    Repetir
		
        Escribir "MENU ELECCIONES 2024"
        Escribir "1. Candidato Uno."
        Escribir "2. Candidato Dos."
        Escribir "3. Candidato Tres."
        Escribir "4. Blanco."
        Escribir "Digite su voto: "
        Leer voto
		
        
		segun voto hacer 
			1:
				cont1=cont1+1
			2:
				cont2=cont2+1
			3:
				cont3=cont3+1
			4:
				contBlanco=contBlanco+1
			De Otro Modo:
				escribir "contador no valido "
				
		FinSegun
		
        contador <- contador + 1   
		
    Hasta Que contador = 50         
	
    
    Escribir "RESULTADOS DE LA MESA:"
    Escribir "Candidato Uno: ", cont1
    Escribir "Candidato Dos: ", cont2
    Escribir "Candidato Tres: ", cont3
    Escribir "Votos en Blanco: ", contBlanco
	
FINALGORITMO
