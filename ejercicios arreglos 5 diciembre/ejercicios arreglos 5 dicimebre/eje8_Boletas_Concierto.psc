Algoritmo Boletas_Concierto
	
    Definir i, Opcion, CantidadBoletas Como Entero
	definir TotalBoletas,BoletDisponibles Como Entero
    Definir cedula, Doblecedula Como Caracter
    
    
    Dimension cedulas[101]
	
    TotalBoletas <- 100
	
    BoletDisponibles <- TotalBoletas
    i <- 0 
    Repetir
        Escribir "                                      "
        Escribir "=====> menu del concierto <=======   "
        Escribir "      # venta de boletas #   "
        Escribir "1. Vender Boleta (Ingresar Cédula)"
        Escribir "2. Consultar Boletas Disponibles"
        Escribir "3. Salir"
        Escribir "Ingrese opción:"
        Leer Opcion
        
        Segun Opcion Hacer
            1: 
                Si BoletDisponibles <= 0 Entonces
                    Escribir "# VENTA concluida # No quedan boletas disponibles."
                SiNo
                    Escribir "Ingresar su número de cédula:"
                    Leer cedula
                    
                    
                    Doblecedula <- "FALSO"
                    Para j <- 1 Hasta i Con Paso 1 Hacer
                        Si cedulas[j] = cedula Entonces
                            Duplicado <- "VERDADERO"
                            Escribir "# venta cancelada # La cédula ", Documento, " ya tiene una boleta."
                            j <- i 
                        Fin Si
                    Fin Para
                    
                    Si Doblecedula = "FALSO" Entonces
                        
                        Repetir
                            Escribir "¿ ingrese Cuántas boletas desea adquirir? (Máximo 4):"
                            Leer CantidadBoletas
                        Mientras Que CantidadBoletas <= 0 O CantidadBoletas > 4
                        
                        Si CantidadBoletas <= BoletDisponibles Entonces
                            
                            i <- i + 1
                            cedulas[i] <- cedula
                            BoletDisponibles <- BoletDisponibles - CantidadBoletas
                            Escribir "# venta concluida # Se compraron ", CantidadBoletas, " boletas."
                            Escribir "cantidad  ", BoletDisponibles, "de  boletas disponibles."
                            
                            Si BoletDisponibles = 0 Entonces
                                Escribir "# venta concluida # Se agotaron todas las boletas."
                            Fin Si
                        SiNo
                            Escribir "se agotaron las voletas.vuelva despues  ", BoletDisponibles
                        Fin Si
                    Fin Si
                Fin Si
				
            2:
                Escribir "cantidad de Boletas disponibles->> ", BoletDisponibles
				
            3: 
                Escribir "Saliendo del sistema de venta."
				
            De Otro Modo:
                Escribir "-opcion no es valida-"
        Fin Segun
        
    Mientras Que Opcion <> 3 Y BoletDisponibles > 0

FinAlgoritmo