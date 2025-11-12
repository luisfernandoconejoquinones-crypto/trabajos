Algoritmo raiz_cuadrada
    Definir num, resultado Como Real
	
    Escribir "Ingrese un número:"
    Leer num
	
    Si num < 0 Entonces
        Escribir "El número tiene raíz imaginaria"
    Sino
        resultado <- num ^ 0.5
			Escribir "La raíz cuadrada del número es: ", resultado
    FinSi
FinAlgoritmo