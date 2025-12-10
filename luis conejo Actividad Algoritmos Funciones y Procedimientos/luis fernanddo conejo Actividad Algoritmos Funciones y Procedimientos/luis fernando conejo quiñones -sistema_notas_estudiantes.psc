Proceso sistema_notas_estudiantes
	
    Definir tabla Como Real
    Dimension tabla[5,5]
	
    Definir opcion, id Como Entero
    Definir resultado Como Real
	
    PrepararTabla(tabla)
	
    Repetir
		
        Escribir "====== SISTEMA DE CALIFICACIONES ======"
        Escribir "Seleccione un estudiante:"
        Escribir "  1) Estudiante 1"
        Escribir "  2) Estudiante 2"
        Escribir "  3) Estudiante 3"
        Escribir "  4) Estudiante 4"
        Escribir "  5) Estudiante 5"
        Escribir "  6) Terminar"
        Escribir "---------------------------------------"
        Escribir Sin Saltar "Opción: "
        Leer opcion
		
        Si opcion >= 1 Y opcion <= 5 Entonces
            
            id <- opcion   
            
            RegistrarNotas(id, tabla)
            
            resultado <- PromedioAlumno(id, tabla)
			
            Escribir "====== INFORME DEL ESTUDIANTE ", id, " ======"
            Escribir "Promedio final: ", resultado
            Escribir "Condición: ", Verificar(resultado)
            Escribir "--------------------------------------------"
            Escribir "Pulse ENTER para continuar..."
            Esperar Tecla
			
        SiNo
            Si opcion = 6 Entonces
                Escribir "Finalizando programa..."
            SiNo
                Escribir "? Opción inválida. Intente nuevamente."
            FinSi
        FinSi
		
    Hasta Que opcion = 6
	
FinProceso



SubProceso PrepararTabla(tabla)
    Definir f, c Como Entero
    Para f <- 1 Hasta 5 Hacer
        Para c <- 1 Hasta 5 Hacer
            tabla[f, c] <- 0
        FinPara
    FinPara
FinSubProceso



SubProceso RegistrarNotas(est, tabla)
    Definir k Como Entero
	
    Escribir "---- Registro de notas para el estudiante ", est, " ----"
	
    Para k <- 1 Hasta 5 Hacer
        Repetir
            Escribir Sin Saltar "Nota ", k, ": "
            Leer tabla[est, k]
			
            Si tabla[est, k] < 0 O tabla[est, k] > 5 Entonces
                Escribir "? La nota debe estar entre 0 y 5."
            FinSi
        Hasta Que tabla[est, k] >= 0 Y tabla[est, k] <= 5
    FinPara
	
    Escribir "Notas registradas correctamente."
	
FinSubProceso



Funcion prom <- PromedioAlumno(est, tabla)
    Definir k Como Entero
    Definir suma, prom Como Real
	
    suma <- 0
	
    Para k <- 1 Hasta 5 Hacer
        suma <- suma + tabla[est, k]
    FinPara
	
    prom <- suma / 5
	
FinFuncion



Funcion mensaje <- Verificar(valor)
    Definir mensaje Como Cadena
	
    Si valor >= 3 Entonces
        mensaje <- "APROBADO"
    SiNo
        mensaje <- "NO APROBADO"
    FinSi
	
FinFuncion
