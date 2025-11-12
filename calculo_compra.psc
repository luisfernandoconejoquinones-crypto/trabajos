Algoritmo calculo_compra
	Definir nombreproducto como cadena 
	definir precio,cantidad,valortotal,descuento,valorneto Como Real
	
	escribir"ingrese el nombre del producto "
	Leer nombreproducto 
	escribir "ingrese el  precio del producto"
	leer precio 
	escribir " ingrese cantidad de productos "
	Leer cantidad
	valortotal<- precio * cantidad
	
	si cantidad > 3 Entonces
		descuento <- valortotal * 0.20
		sino
			si cantidad > 2 Entonces
				descuento <- valortotal * 0.10
				si cantidad < 1 Entonces
					descuento<- valortotal* 0.5
				SiNo
					descuento<- 0
				FinSi
			FinSi
		FinSi
	
		valorneto<- valortotal - descuento
		escribir " nombre del producto", nombreproducto 
		escribir " precio del producto","$", precio
		Escribir "cantidad comprada ", cantidad 
		escribir " valor total","$", valortotal
		escribir "descuento aplicado","$", descuento
		escribir "valor neto a pagar ","$", valorneto 
		
		
	
FinAlgoritmo

	