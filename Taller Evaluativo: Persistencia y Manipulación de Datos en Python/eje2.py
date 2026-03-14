# 1 :eer csv con pandas 
import pandas as pd
df = pd.read_csv("inventario.csv")

# 2 : producto mas costoso 
producto_mas_costoso = df.loc[df['precio'].idxmax()]
print("Producto más costoso:")
print(producto_mas_costoso, "\n")

# 3: Producto con mayor cantidad
producto_mayor_cantidad = df.loc[df['cantidad'].idxmax()]
print("Producto con mayor cantidad:")
print(producto_mayor_cantidad, "\n")


# 4 :columna con valor_total
df['valor_total'] = df['precio'] * df['cantidad']

print("Inventario con valor_total agregado:")
print(df, "\n")

#guardar archivo actualizado 
df.to_csv("inventario_actualizado.csv", index=False)
print("Archivo 'inventario_actualizado.csv' guardado correctamente.")


