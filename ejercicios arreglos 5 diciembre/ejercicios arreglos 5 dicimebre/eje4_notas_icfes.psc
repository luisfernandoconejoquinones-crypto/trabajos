Algoritmo notas_icfes
	dimension nombre[10]
	dimension puntaje[10]
	
	definir puntaje,puntajemayor,puntajemenor,suma  Como Entero
	definir i Como Entero
	definir nombremayor,nombremenor como cadena
	definir promedio Como Real
	suma = 0
	
	para i =1 Hasta 10 Hacer
		escribir"ingresar nombre del aprendiz numero : ",i
		leer nombre[i]
		Escribir"ingresar puntajedel aprendiz",i,"entre (1,400) -->>"
		Leer puntaje[i]
		
		si i=1 Entonces
			puntajemayor=puntaje[i]
			puntajemenor=puntaje[i]
			nombremayor=nombre[i]
			nombremenor=nombre[i]
		sino 
			si puntaje[i] > puntajemayor entonces
				puntajemayor=puntaje[i]
				nombremayor=nombre[i]
			sino 
				si puntaje[i] < puntajemenor Entonces
					puntajemenor= puntaje[i]
					nombremenor=nombre[i]
					
					
				FinSi
			FinSi
			
			suma=suma + puntaje[i]
			
			
			
		FinSi
		
		
	FinPara
	
	promedio= suma/ 10
	
	Escribir "   "
	escribir"------RESULTADOS-------"
	Escribir "el mayor puntaje es : ",nombremayor,"->",puntajemayor
	Escribir "el menor puntaje es : " ,nombremenor,"->",puntajemenor
	Escribir "el promedio de puntajes fue --> : ", promedio
	
FinAlgoritmo
	