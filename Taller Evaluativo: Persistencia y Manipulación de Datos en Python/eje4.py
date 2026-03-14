import json
import urllib.request

# =====================================
# 1. Leer archivo JSON desde la URL
#    y guardarlo como deportistas.json
# =====================================
url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/deportistas.json"

with urllib.request.urlopen(url) as respuesta:
    datos = json.load(respuesta)

with open("deportistas.json", "w", encoding="utf-8") as archivo:
    json.dump(datos, archivo, indent=4)

print("Archivo deportistas.json creado")

# =====================================
# 2. Leer el archivo local
# =====================================
with open("deportistas.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)

print("Cantidad de deportistas:", len(datos))

# =====================================
# 3. Filtrar deportistas mujeres
# =====================================
mujeres = []

for d in datos:
    if d["sexo"] == "Femenino":
        mujeres.append(d)

with open("deportistas_mujeres.json", "w", encoding="utf-8") as archivo:
    json.dump(mujeres, archivo, indent=4)

print("Archivo deportistas_mujeres.json creado")

# =====================================
# 4. Filtrar ciclismo ruta entre 28 y 35
# =====================================
ciclismo = []

for d in datos:
    if "ciclismo" in d["deporte"].lower() and 28 <= d["edad"] <= 35:
        ciclismo.append(d)

with open("deportistas_ciclismo_ruta.json", "w", encoding="utf-8") as archivo:
    json.dump(ciclismo, archivo, indent=4)

print("Archivo deportistas_ciclismo_ruta.json creado")
print("Cantidad de ciclistas encontrados:", len(ciclismo))

# =====================================
# 5. Promedio edad mujeres baloncesto
# =====================================
edades = []

for d in datos:
    if d["sexo"] == "Femenino" and "baloncesto" in d["deporte"].lower():
        edades.append(d["edad"])

if edades:
    promedio = sum(edades) / len(edades)
    print("Promedio edad mujeres baloncesto:", round(promedio, 2))
else:
    print("No se encontraron mujeres en baloncesto")

# =====================================
# 6. Deportista masculino de mayor edad
# =====================================
mayor = None

for d in datos:
    if d["sexo"] == "Masculino":
        if mayor is None or d["edad"] > mayor["edad"]:
            mayor = d

print("\nDeportista masculino de mayor edad:")
print(mayor)

# =====================================
# 7. Deportistas con estatura > 1.85
# =====================================
altos = []

for d in datos:
    if d["estatura"] > 1.85:
        altos.append(d)

with open("deportistas_estatura_mayor_1.85.json", "w", encoding="utf-8") as archivo:
    json.dump(altos, archivo, indent=4)

print("\nArchivo deportistas_estatura_mayor_1.85.json creado")
print("Cantidad de deportistas altos:", len(altos))