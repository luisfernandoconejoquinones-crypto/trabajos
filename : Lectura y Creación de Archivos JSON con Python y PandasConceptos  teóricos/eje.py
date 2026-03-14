import pandas as pd

# URL del archivo JSON
url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/SENA.matriculados.json"

try:
    
    # 1. LEER DATOS
    
    df = pd.read_json(url)

    print("--- SISTEMA DE GESTIÓN SENA CARGADO ---")
    print("\nColumnas del archivo:")
    print(df.columns)

    
    # 2. AGREGAR NUEVO APRENDIZ

    print("\n--- Agregar Nuevo Aprendiz ---")

    nuevo_nombre = input("Nombre del aprendiz: ")
    apellido = input("Primer apellido: ")
    documento = input("Número de documento: ")
    nueva_ficha = input("Número de ficha: ")
    
    nuevo_registro = {
        "NOMBRE": nuevo_nombre,
        "FICHA": nueva_ficha,
        "PROGRAMA_FORMACION": "ANALISIS Y DESARROLLO DE SOFTWARE",
        "CODIGO_PROGRAMA": 228118,
        "ESTADO_APRENDIZ": "En transito"
    }

    # Agregar el nuevo registro al DataFrame
    df = pd.concat([df, pd.DataFrame([nuevo_registro])], ignore_index=True)

    print("Registro agregado exitosamente.")

    
    # 3. FILTRO: PROGRAMA ADSO
    
    adso = df[df["PROGRAMA_FORMACION"] == "ANALISIS Y DESARROLLO DE SOFTWARE"]

    
    # 4. FILTRO: FICHA 3312932
    
    ficha_especifica = adso[adso["FICHA"].astype(str) == "3312932"]

    
    # 5. FILTRO: CODIGO_PROGRAMA 228118 Y ESTADO "En transito"
    
    filtro_transito = df[
        (df["CODIGO_PROGRAMA"].astype(str) == "228118") &
        (df["ESTADO_APRENDIZ"].str.contains("En transito", case=False, na=False))
    ]

    
    # 6. REPORTE ESTADÍSTICO

    print("\n--- REPORTE ESTADÍSTICO ---")

    print(f"Total aprendices en ADSO: {len(adso)}")
    print(f"Aprendices en ficha 3312932: {len(ficha_especifica)}")
    print(f"Aprendices 'En transito' (Código 228118): {len(filtro_transito)}")

    
    # 7. EXPORTAR RESULTADOS
    
    adso.to_json("ADSO-CTPI.json", orient="records", indent=4)

    filtro_transito.to_csv("Reporte_Transito.csv", index=False)

    print("\nArchivos creados correctamente:")
    print("ADSO-CTPI.json")
    print("Reporte_Transito.csv")

except Exception as e:
    print(f"Error en el sistema: {e}")