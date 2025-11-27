Algoritmo MayorNumero
	
    Definir n, i Como Entero
    Definir num, mayor Como Real
	
    Escribir "¿Cuántos números va a ingresar?"
    Leer n
	
    i = 1
	
    Escribir "Ingrese el número ", i, ":"
    Leer num
	
    mayor = num      
    i = i + 1
	
    Mientras i <= n Hacer
		
        Escribir "Ingrese el número ", i, ":"
        Leer num
		
        Si num > mayor Entonces
            mayor = num
        FinSi
		
        i = i + 1
		
    FinMientras
	
    Escribir "El número mayor es: ", mayor
	
FinAlgoritmo

