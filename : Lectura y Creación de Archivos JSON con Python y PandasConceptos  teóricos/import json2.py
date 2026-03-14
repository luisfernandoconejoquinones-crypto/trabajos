import json

# 1. PREPARACIÓN DE DATOS (Nuevos productos)

def crear_archivos_ejemplo():

    productos = [
        {"producto": "Impresora Láser", "precio": 450, "cantidad": 8},
        {"producto": "Cámara Web HD", "precio": 65, "cantidad": 2},
        {"producto": "Diadema USB", "precio": 40, "cantidad": 4},
        {"producto": "Disco Externo", "precio": 120, "cantidad": 12}
    ]

    ventas = [
        {"vendedor": "Carlos", "mes": "Enero", "ventas": 2100},
        {"vendedor": "Marta", "mes": "Enero", "ventas": 1800},
        {"vendedor": "Carlos", "mes": "Febrero", "ventas": 2500},
        {"vendedor": "Marta", "mes": "Febrero", "ventas": 2200},
        {"vendedor": "Jorge", "mes": "Enero", "ventas": 3000}
    ]

    with open("productos.json", "w", encoding="utf-8") as f:
        json.dump(productos, f, indent=4)

    with open("ventas.json", "w", encoding="utf-8") as f:
        json.dump(ventas, f, indent=4)



# 2. PROCESAR INVENTARIO (Ejercicio 1)

def procesar_inventario():

    print("\n--- EJERCICIO 1: GESTIÓN DE INVENTARIO ---")

    with open("productos.json", "r", encoding="utf-8") as f:
        productos = json.load(f)

    total_inventario = 0
    bajo_stock = []

    for p in productos:

        valor_total_producto = p["precio"] * p["cantidad"]
        total_inventario += valor_total_producto

        print(f"Producto: {p['producto']} | Valor en Bodega: ${valor_total_producto}")

        if p["cantidad"] < 5:
            bajo_stock.append(p)

    print(f"VALOR TOTAL DEL INVENTARIO: ${total_inventario}")

    with open("bajo_stock.json", "w", encoding="utf-8") as f:
        json.dump(bajo_stock, f, indent=4)

    print("Archivo 'bajo_stock.json' generado")



# 3. PROCESAR VENTAS (Ejercicio 2)

def procesar_ventas():

    print("\n--- EJERCICIO 2: ANÁLISIS DE VENTAS ---")

    with open("ventas.json", "r", encoding="utf-8") as f:
        ventas_data = json.load(f)

    agrupado = {}
    total_acumulado_ventas = 0

    for v in ventas_data:

        nombre = v["vendedor"]
        monto = v["ventas"]

        total_acumulado_ventas += monto

        if nombre not in agrupado:
            agrupado[nombre] = []

        agrupado[nombre].append(monto)

    ranking = []

    for nombre, lista_ventas in agrupado.items():

        total_v = sum(lista_ventas)
        promedio_v = total_v / len(lista_ventas)

        ranking.append({
            "vendedor": nombre,
            "total_ventas": total_v,
            "promedio_mensual": promedio_v
        })

    promedio_general = total_acumulado_ventas / len(ventas_data)

    print(f"Promedio general de ventas: ${promedio_general:.2f}")

    ranking_ordenado = sorted(
        ranking,
        key=lambda x: x["total_ventas"],
        reverse=True
    )

    top_vendedor = ranking_ordenado[0]

    print(f"Vendedor líder: {top_vendedor['vendedor']} con ${top_vendedor['total_ventas']}")

    with open("ranking_ventas.json", "w", encoding="utf-8") as f:
        json.dump(ranking_ordenado, f, indent=4)

    print("Archivo 'ranking_ventas.json' generado")



# EJECUCIÓN DEL PROGRAMA

if __name__ == "__main__":
    crear_archivos_ejemplo()
    procesar_inventario()
    procesar_ventas()