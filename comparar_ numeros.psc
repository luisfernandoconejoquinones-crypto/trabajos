Algoritmo Comparar_Numeros
    Definir num1, num2, suma, diferencia, producto, division Como Real
	
    Escribir "Ingrese el primer número:"
    Leer num1
	
    Escribir "Ingrese el segundo número:"
    Leer num2
	
    Si num1 > num2 Entonces
        suma <- num1 + num2
        diferencia <- num1 - num2
        Escribir "La suma es: ", suma
        Escribir "La diferencia es: ", diferencia
    Sino
        producto <- num1 * num2
        division <- num1 / num2
        Escribir "El producto es: ", producto
        Escribir "La división es: ", division
    FinSi
FinAlgoritmo
