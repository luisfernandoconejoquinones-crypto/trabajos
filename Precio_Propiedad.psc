
Algoritmo Precio_Propiedad
	Definir area, valor_metro, precio_venta, cuota_inicial Como Real
	Definir forma_pago Como Entero
	
	Escribir "Ingrese el área de la propiedad (en metros cuadrados):"
	Leer area
	Escribir "Ingrese el valor del metro cuadrado:"
	Leer valor_metro
	Escribir "Ingrese la forma de pago (1 = descuento del 10%, 2 = recargo del 8%):"
	Leer forma_pago
	
	precio_venta <- area * valor_metro
	cuota_inicial <- precio_venta * 0.20
	
	Si forma_pago = 1 Entonces
		cuota_inicial <- cuota_inicial - (cuota_inicial * 0.10)
	Sino
		Si forma_pago = 2 Entonces
			cuota_inicial <- cuota_inicial + (cuota_inicial * 0.08)
		FinSi
	FinSi
	
	Escribir "El precio de venta de la propiedad es: $", precio_venta
	Escribir "El valor final de la cuota inicial es: $", cuota_inicial
FinAlgoritmo

