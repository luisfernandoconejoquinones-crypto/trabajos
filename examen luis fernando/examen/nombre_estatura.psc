Algoritmo nombre_estatura
	
	Definir N Como Entero;
	N <- 5;
	
	
	Dimension Nom[N], Est[N];
	
	
	Definir Opcion, i, iM Como Entero;
	Definir S, M, P Como Real; 
	
	
	Nom[1] <- "Monik Galindo";
	Nom[2] <- "Pedro Picapiedra";
	Nom[3] <- "Rosa Dorado";
	Nom[4] <- "Gustavo Salas";
	Nom[5] <- "Blanca Rojas";
	
	Repetir
		Escribir "";
		Escribir "* MENU APRENDICES *";
		Escribir "1. Leer nombre de los aprendices";
		Escribir "2. Leer estatura de los aprendices";
		Escribir "3. Mostrar el nombre y la estatura del aprendiz de menor estatura";
		Escribir "4. Mostrar en pantalla el nombre de cada aprendiz con su estatura";
		Escribir "5. Mostrar el promedio de estatura de los cinco aprendices";
		Escribir "6. Salir";
		Escribir "    ";
		Escribir "Seleccione una opción (1-6):";
		Leer Opcion ;
		
		Segun Opcion  Hacer
			
			
			1: 
				Escribir "--- LECTURA DE NOMBRES ---";
				Para i<-1 Hasta N Hacer 
					Escribir "Ingrese el nombre del aprendiz ", i, ":"; 
					Leer Nom[i]; 
				FinPara
				
				
			2: 
				Escribir "* LECTURA DE ESTATURAS *";
				Para i<-1 Hasta N Hacer 
					
					Escribir "Ingrese la estatura (en metros) de ", Nom[i], ":"; 
					Leer Est[i]; 
				FinPara
				
				
			3: 
				
				M<-Est[1]; iM<-1;
				
				Para i<-2 Hasta N Hacer
					Si Est[i]<M Entonces 
						M<-Est[i]; 
						iM<-i; 
					FinSi
				FinPara
				Escribir "* MENOR ESTATURA *";
				Escribir "Nombre: ", Nom[iM], " | Estatura: ", M, "m";
				
				
			4: 
				Escribir "--- LISTADO COMPLETO ---";
				Para i<-1 Hasta N Hacer 
					Escribir "Aprendiz ", i, ": ", Nom[i], " - ", Est[i], "m"; 
				FinPara
				
				
			5: 
				S<-0; 
				Para i<-1 Hasta N Hacer S<-S+Est[i]; FinPara 
				P<-S/N; 
				Escribir "--- PROMEDIO ---";
				Escribir "Promedio de estatura: ", P, "m";
				
			
			6: Escribir "Saliendo del programa. ¡Hasta luego!";
				
			De Otro Modo: 
				Escribir "Opción inválida. Intente de nuevo.";
		FinSegun
		
	Hasta Que Opcion  = 6
FinAlgoritmo
	
