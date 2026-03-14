import json


# 1. Crear los datos de 10 departamentos

departamentos = [
    {"Departamento": "Cauca", "Cantidad_Votantes_Hombres": 1200, "Cantidad_Votantes_Mujeres": 2400},
    {"Departamento": "Huila", "Cantidad_Votantes_Hombres": 4900, "Cantidad_Votantes_Mujeres": 3950},
    {"Departamento": "Antioquia", "Cantidad_Votantes_Hombres": 8000, "Cantidad_Votantes_Mujeres": 8500},
    {"Departamento": "Cundinamarca", "Cantidad_Votantes_Hombres": 6500, "Cantidad_Votantes_Mujeres": 7000},
    {"Departamento": "Valle del Cauca", "Cantidad_Votantes_Hombres": 7200, "Cantidad_Votantes_Mujeres": 7600},
    {"Departamento": "Tolima", "Cantidad_Votantes_Hombres": 3100, "Cantidad_Votantes_Mujeres": 2800},
    {"Departamento": "Meta", "Cantidad_Votantes_Hombres": 2500, "Cantidad_Votantes_Mujeres": 2700},
    {"Departamento": "Nariño", "Cantidad_Votantes_Hombres": 4300, "Cantidad_Votantes_Mujeres": 4600},
    {"Departamento": "Santander", "Cantidad_Votantes_Hombres": 5100, "Cantidad_Votantes_Mujeres": 5200},
    {"Departamento": "Boyacá", "Cantidad_Votantes_Hombres": 3000, "Cantidad_Votantes_Mujeres": 3400}
]


# 2. Crear archivo elecciones.json

with open("elecciones.json", "w", encoding="utf-8") as archivo:
    json.dump(departamentos, archivo, indent=4)

print("Archivo elecciones.json creado correctamente\n")

# 3. Leer archivo elecciones.json

with open("elecciones.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)

# 4. Buscar departamentos con más mujeres

resultado = []

for d in datos:
    hombres = d["Cantidad_Votantes_Hombres"]
    mujeres = d["Cantidad_Votantes_Mujeres"]

    if mujeres > hombres:
        total = hombres + mujeres
        porcentaje_hombres = hombres / total
        porcentaje_mujeres = mujeres / total

        nuevo = {
            "Departamento": d["Departamento"],
            "Cantidad_Votantes_Hombres": hombres,
            "Cantidad_Votantes_Mujeres": mujeres,
            "Total_Votantes": total,
            "Porcentaje_Hombres": round(porcentaje_hombres, 2),
            "Porcentaje_Mujeres": round(porcentaje_mujeres, 2)
        }

        resultado.append(nuevo)


# 5. Guardar archivo nuevo

with open("mayoria_mujeres_departamento.json", "w", encoding="utf-8") as archivo:
    json.dump(resultado, archivo, indent=4)

print("Archivo mayoria_mujeres_departamento.json creado correctamente\n")


# 6. Mostrar resultados

print("Departamentos donde votaron más mujeres:\n")

for r in resultado:
    print(r)
    