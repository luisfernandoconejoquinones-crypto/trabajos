Algoritmo Gestion_Turnos_Diarios
	
    Dimension Turnos[9,3]
    Dimension ListaHoras[9]
	
    Definir i, eleccion, TurnosTomados Como Entero
    Definir DocID, HoraBuscada Como Cadena
    Definir Hallado Como Logico
	
    
    ListaHoras[1] <- "7:00 am"
    ListaHoras[2] <- "8:00 am"
    ListaHoras[3] <- "9:00 am"
    ListaHoras[4] <- "10:00 am"
    ListaHoras[5] <- "2:00 pm"
    ListaHoras[6] <- "3:00 pm"
    ListaHoras[7] <- "4:00 pm"
    ListaHoras[8] <- "5:00 pm"
	
    
    Para i <- 1 Hasta 8 Hacer
        Turnos[i,1] <- ListaHoras[i]
        Turnos[i,2] <- ""     
    FinPara
	
    TurnosTomados <- 0
	
    Repetir
        Escribir ""
        Escribir "======== SISTEMA DE GESTIÓN DE TURNOS ========"
        Escribir "1) Registrar turno"
        Escribir "2) Ver lista de turnos"
        Escribir "3) Buscar turno por documento"
        Escribir "4) Buscar turno por horario"
        Escribir "5) Finalizar"
        Escribir "Seleccione una opción:"
        Leer eleccion
		
        Segun eleccion Hacer
			
		
            1:
                Si TurnosTomados = 8 Entonces
                    Escribir "No quedan turnos disponibles hoy."
                SiNo
                    Escribir "Horarios vacíos disponibles:"
                    Para i <- 1 Hasta 8 Hacer
                        Si Turnos[i,2] = "" Entonces
                            Escribir i, ". ", Turnos[i,1]
                        FinSi
                    FinPara
					
                    Repetir
                        Escribir "Seleccione número del horario (1 - 8):"
                        Leer i
                    Hasta Que i >= 1 Y i <= 8
					
                    Si Turnos[i,2] = "" Entonces
                        Escribir "Ingrese el Documento del paciente:"
                        Leer DocID
                        Turnos[i,2] <- DocID
                        TurnosTomados <- TurnosTomados + 1
                        Escribir "Turno registrado correctamente para ", Turnos[i,1]
                    SiNo
                        Escribir "Ese horario ya está asignado."
                    FinSi
                FinSi
				
				
			
            2:
                Escribir ""
                Escribir "HORARIO  |  DOCUMENTO"
                Para i <- 1 Hasta 8 Hacer
                    Escribir Turnos[i,1], " | ", Turnos[i,2]
                FinPara
                Escribir "Total de turnos asignados: ", TurnosTomados
				
				
			
            3:
                Escribir "Ingrese Documento a buscar:"
                Leer DocID
				
                Hallado <- FALSO
                Para i <- 1 Hasta 8 Hacer
                    Si Turnos[i,2] = DocID Entonces
                        Escribir "El paciente tiene turno a las ", Turnos[i,1]
                        Hallado <- VERDADERO
                        i <- 8
                    FinSi
                FinPara
				
                Si Hallado = FALSO Entonces
                    Escribir "No hay ningún turno asociado a ese Documento."
                FinSi
				
				
				
            4:
                Escribir "Ingrese la hora a revisar:"
                Leer HoraBuscada
				
                Hallado <- FALSO
                Para i <- 1 Hasta 8 Hacer
                    Si Turnos[i,1] = HoraBuscada Entonces
                        Si Turnos[i,2] <> "" Entonces
                            Escribir "Ese horario pertenece al paciente con Documento: ", Turnos[i,2]
                        SiNo
                            Escribir "Ese horario está libre."
                        FinSi
                        Hallado <- VERDADERO
                        i <- 8
                    FinSi
                FinPara
				
                Si Hallado = FALSO Entonces
                    Escribir "Horario no existente."
                FinSi
				
				
			
            5:
                Escribir "Cerrando sistema..."
				
            De Otro Modo:
                Escribir "Opción no válida."
        FinSegun
		
    Hasta Que eleccion = 5
	
FinAlgoritmo
