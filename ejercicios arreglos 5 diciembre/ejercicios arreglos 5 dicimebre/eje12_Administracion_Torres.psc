Proceso Administracion_Torres
	
    Dimension Registro[4,6,5]   
	
    Definir opcion Como Entero
    Definir Tn, Ps, Ap Como Entero
    Definir acumulado, promedio, totalHabitantes Como Entero
	
    Repetir
        Limpiar Pantalla
        Escribir "=========== PANEL DE CONTROL ===========" 
        Escribir "1) Cargar datos aleatorios de habitantes"
        Escribir "2) Consultar habitantes de un apartamento"
        Escribir "3) Total de habitantes del residencial"
        Escribir "4) Promedio por piso en cada torre"
        Escribir "5) Promedio por torre"
        Escribir "6) Salir"
        Escribir "Seleccione una opción:"
        Leer opcion
		
        Segun opcion Hacer
			
				
            1:
                Para Tn <- 1 Hasta 3
                    Para Ps <- 1 Hasta 5
                        Para Ap <- 1 Hasta 4
                            Registro[Tn,Ps,Ap] <- Aleatorio(1,5)
                        FinPara
                    FinPara
                FinPara
				
                Escribir "Datos generados exitosamente."
                Esperar Tecla
				
				
				
            2:
                Escribir "Ingrese Torre (1-3): "
                Leer Tn
                Escribir "Ingrese Piso (1-5): "
                Leer Ps
                Escribir "Ingrese Apartamento (1-4): "
                Leer Ap
				
                Escribir "Habitantes registrados: ", Registro[Tn,Ps,Ap]
                Esperar Tecla
				
				
				
            3:
                totalHabitantes <- 0
				
                Para Tn <- 1 Hasta 3
                    Para Ps <- 1 Hasta 5
                        Para Ap <- 1 Hasta 4
                            totalHabitantes <- totalHabitantes + Registro[Tn,Ps,Ap]
                        FinPara
                    FinPara
                FinPara
				
                Escribir "Total de habitantes en el conjunto: ", totalHabitantes
                Esperar Tecla
				
				
				
            4:
                Para Tn <- 1 Hasta 3
                    Escribir "Torre ", Tn
                    Para Ps <- 1 Hasta 5
                        acumulado <- 0
                        Para Ap <- 1 Hasta 4
                            acumulado <- acumulado + Registro[Tn,Ps,Ap]
                        FinPara
                        promedio <- acumulado / 4
                        Escribir "  Piso ", Ps, " -> Promedio: ", promedio
                    FinPara
                    Escribir ""
                FinPara
				
                Esperar Tecla
				
				
				
            5:
                Para Tn <- 1 Hasta 3
                    acumulado <- 0
					
                    Para Ps <- 1 Hasta 5
                        Para Ap <- 1 Hasta 4
                            acumulado <- acumulado + Registro[Tn,Ps,Ap]
                        FinPara
                    FinPara
					
                    promedio <- acumulado / 20     
                    Escribir "Promedio de habitantes en Torre ", Tn, ": ", promedio
                FinPara
				
                Esperar Tecla
				
				
				
            6:
                Escribir "Finalizando sistema..."
				
				
            De Otro Modo:
                Escribir "Opción incorrecta."
                Esperar Tecla
				
        FinSegun
		
    Hasta Que opcion = 6
	
FinProceso
