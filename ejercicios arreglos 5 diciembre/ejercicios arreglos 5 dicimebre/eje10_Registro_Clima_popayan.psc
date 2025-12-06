
Algoritmo Registro_Clima_Semanal
	
    
    Dimension Clima[8, 3]
    Dimension Semana[8]
	
    
    Definir d, k, opcion, diaElegido Como Entero
    Definir minDia, maxDia, MayorTemp, DiaMayor Como Entero
    Definir NombreDia Como Cadena
	

    Semana[1] <- "Lunes"
    Semana[2] <- "Martes"
    Semana[3] <- "Miércoles"
    Semana[4] <- "Jueves"
    Semana[5] <- "Viernes"
    Semana[6] <- "Sábado"
    Semana[7] <- "Domingo"
	
    Escribir "===== REGISTRO SEMANAL DEL CLIMA ====="
	
    // Inicializar máximo global
    MayorTemp <- -9999
    DiaMayor <- 0
	
    
    Para d <- 1 Hasta 7 Hacer
        Escribir "Día: ", Semana[d]
        Escribir "   -> Ingrese temperatura más baja:"
        Leer Clima[d,1]
        Escribir "   -> Ingrese temperatura más alta:"
        Leer Clima[d,2]
		
	
        Si Clima[d,2] > MayorTemp Entonces
            MayorTemp <- Clima[d,2]
            DiaMayor <- d
        FinSi
    FinPara
	
	
    
    Repetir
        Escribir ""
        Escribir "========= CONSULTA DE DATOS ========="
        Escribir "1) Mostrar el día más caluroso de la semana"
        Escribir "2) Ver temperaturas de un día específico"
        Escribir "3) Terminar"
        Escribir "Seleccione una opción:"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                Escribir "El día con mayor temperatura máxima fue ", Semana[DiaMayor]
                Escribir "Temperatura máxima registrada: ", MayorTemp, "°C"
				
            2:
                Escribir "Seleccione un día (1 = Lunes ... 7 = Domingo):"
                
                Repetir
                    Leer diaElegido
                Mientras Que diaElegido < 1 O diaElegido > 7
				
                minDia <- Clima[diaElegido,1]
                maxDia <- Clima[diaElegido,2]
                NombreDia <- Semana[diaElegido]
				
                Escribir "----- Información del día ", NombreDia, " -----"
                Escribir "Temperatura mínima: ", minDia, "°C"
                Escribir "Temperatura máxima: ", maxDia, "°C"
                Escribir "----------------------------------------------"
				
            3:
                Escribir "Finalizando consulta..."
				
            De Otro Modo:
                Escribir "Opción inválida, intente nuevamente."
				
        FinSegun
		
    Hasta Que opcion = 3

FinAlgoritmo
