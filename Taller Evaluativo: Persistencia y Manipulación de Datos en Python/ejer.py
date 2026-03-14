import csv

# 1:crear los productos 
    
productos = [
    {"codigo": "P001", "nombre": "Teclado Mecánico", "precio": 60.00, "cantidad": 10},
    {"codigo": "P002", "nombre": "Mouse Óptico", "precio": 25.50, "cantidad": 15},
    {"codigo": "P003", "nombre": "Monitor 24\"", "precio": 180.00, "cantidad": 5},
    {"codigo": "P004", "nombre": "Impresora Láser", "precio": 200.00, "cantidad": 3},
    {"codigo": "P005", "nombre": "Memoria USB 16GB", "precio": 12.00, "cantidad": 50}
]

#2: creae y guardar csv
with open("inventario.csv", "w", newline="", encoding="utf-8") as archivo:
    campos = ["codigo", "nombre", "precio", "cantidad"]
    escritor = csv.DictWriter(archivo, fieldnames=campos)
    
    escritor.writeheader()       # Escribir encabezado
    escritor.writerows(productos)  # Escribir productos

print("CSV 'inventario.csv' creado correctamente.\n")

#3: leer csv y mostrar registros 

print("Registros en inventario:")
with open("inventario.csv", "r", encoding="utf-8") as archivo:
    lector = csv.DictReader(archivo)
    for fila in lector:
        print(fila)

# 4: calcular valor total deo inventario
total_inventario = 0
with open("inventario.csv", "r", encoding="utf-8") as archivo:
    lector = csv.DictReader(archivo)
    for fila in lector:
        precio = float(fila["precio"])
        cantidad = int(fila["cantidad"])
        total_inventario += precio * cantidad

print(f"\nValor total del inventario: ${total_inventario:.2f}")
        
