Algoritmo Par_Impar_Matriz
	
    Definir M, N, i, j Como Entero
    Definir valor Como Entero
	
    Escribir "Digite la cantidad de filas (M): "
    Leer M
    Escribir "Digite la cantidad de columnas (N): "
    Leer N
	
    Dimension A[M, N]
    Dimension B[M, N]
	
    Escribir "--- Registro de datos en la matriz ---"
	
    i <- 1
    Repetir
        j <- 1
        Repetir
            Escribir "Valor para (", i, ",", j, "): " Sin Saltar
            Leer valor
			
            A[i, j] <- valor
			
            Si valor MOD 2 = 0 Entonces
                B[i, j] <- "P"
            SiNo
                B[i, j] <- "I"
            FinSi
			
            j <- j + 1
        Hasta Que j > N
		
        i <- i + 1
    Hasta Que i > M
	
    Escribir "-------------------------------"
    Escribir "Contenido de la Matriz A:"
    
    i <- 1
    Mientras i <= M Hacer
        j <- 1
        Mientras j <= N Hacer
            Escribir A[i, j], " " Sin Saltar
            j <- j + 1
        FinMientras
        Escribir ""
        i <- i + 1
    FinMientras
	
    Escribir "-------------------------------"
    Escribir "Contenido de la Matriz B (P/I):"
	
    i <- 1
    Mientras i <= M Hacer
        j <- 1
        Mientras j <= N Hacer
            Escribir B[i, j], " " Sin Saltar
            j <- j + 1
        FinMientras
        Escribir ""
        i <- i + 1
    FinMientras
	
    Escribir "-------------------------------"
	
FinAlgoritmo

