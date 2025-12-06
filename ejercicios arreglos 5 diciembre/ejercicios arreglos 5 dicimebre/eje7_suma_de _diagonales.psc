
Proceso sumar_diagonal
    Definir N, i, j Como Entero
    Definir matriz Como Entero
    Definir suma Como Entero
	
    suma <- 0
	
    Escribir "Ingresar el tamaño de la matriz (N): "
    Leer N
	
    Dimension matriz[N, N]
	
    Para i <- 1 Hasta N Hacer
		
        Para j <- 1 Hasta N Con Paso 1
            Escribir "Ingrese el valor en la posición (", i, ", ", j, "): "
            Leer matriz[i, j]
			
            
            Si i = j Entonces
                suma <- suma + matriz[i, j]
            FinSi
        FinPara
    FinPara
	Escribir "----------------"
    Escribir "La suma de los valores en la diagonales  principal es: ", suma
FinProceso
