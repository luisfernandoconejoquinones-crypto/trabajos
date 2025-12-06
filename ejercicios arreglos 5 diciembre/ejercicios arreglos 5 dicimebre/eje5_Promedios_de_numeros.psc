Proceso Promedios_de_numeros
    Dimension  A[10]
	definir  i, num Como Entero
    Definir sumaPar, sumaImpar, cantidadPar, cantidadtImpar Como Entero
    Definir sumaPosPar, sumaPosImpar Como Entero
	
    sumaPar <- 0
    sumaImpar <- 0
    cantidadPar <- 0
    cantidadtImpar <- 0
    sumaPosPar <- 0
    sumaPosImpar <- 0
	
    Para i <- 1 Hasta 10 Con Paso 1
        Escribir "Ingrese número ", i, ": "
        Leer A[i]
		
        num <- A[i]
		
        Si num MOD 2 = 0 Entonces
            sumaPar <- sumaPar + num
            cantidadPar <- cantidadPar + 1
        SiNo
            sumaImpar <- sumaImpar + num
            cantidadImpar <- cantidadImpar + 1
        FinSi
		
        
        Si i MOD 2 = 0 Entonces
            sumaPosPar <- sumaPosPar + num
        SiNo
            sumaPosImpar <- sumaPosImpar + num
        FinSi
    FinPara
	
    
    Si cantidadPar > 0 Entonces
        promPar <- sumaPar / cantidadPar
    SiNo
        promPar <- 0
    FinSi
	
    Si cantidadImpar > 0 Entonces
        promImpar <- sumaImpar / cantidadImpar
    SiNo
        promImpar <- 0
    FinSi
	
    Escribir " el promedio de numeros pares es : ", promPar
    Escribir "el promedio de los numeros impares es : ", promImpar
    Escribir "la Suma  de posiciones pares: ", sumaPosPar
    Escribir " la Suma de  posiciones impares: ", sumaPosImpar
	
FinProceso
