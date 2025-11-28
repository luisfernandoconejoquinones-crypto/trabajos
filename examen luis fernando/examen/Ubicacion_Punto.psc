Algoritmo Ubicacion_Punto
	
    Definir x, variabley Como Real
	
    Escribir "Ingrese el valor de x:"
    Leer x
	
    Escribir "Ingrese el valor de y:"
    Leer variabley
	
    
    Si x = 0 Y variabley = 0 Entonces
        Escribir "El punto está en el ORIGEN."
		
    Sino
        Si x = 0 Entonces
            Escribir "El punto está sobre el EJE Y."
			
        Sino
            Si variabley = 0 Entonces
                Escribir "El punto está sobre el EJE X."
				
            Sino
			
                Si x > 0 Y variabley > 0 Entonces
                    Escribir "El punto está en el PRIMER CUADRANTE."
					
                Sino
                    Si x < 0 Y variabley> 0 Entonces
                        Escribir "El punto está en el SEGUNDO CUADRANTE."
						
                    Sino
                        Si x < 0 Y variabley < 0 Entonces
                            Escribir "El punto está en el TERCER CUADRANTE."
							
                        Sino
                            Si x > 0 Y variabley < 0 Entonces
                                Escribir "El punto está en el CUARTO CUADRANTE."
                            FinSi
                        FinSi
                    FinSi
                FinSi
				
            FinSi
        FinSi
    FinSi
	
FinAlgoritmo

