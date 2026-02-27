import pandas as pd
#leer csv
df= pd.read_csv("alto_rendimiento.csv")
print(df)

#mostrar los primeros 10 registrados 
print("primeros 10 registrados:")
print(df.head(10))

#estudiantes con promedio superior a 4.2

mayor_42 = df[df["promedio"] > 4.2]

print("Estudiantes con promedio > 4.2:")
print(mayor_42)
 
 #Muestre todos los datos de los estudiantes de determinado sexo cuya edad sea superior a 21 años

superior_21 = df[df["edad"] > 21]
print("estudiantes con la edad superior a > 21:") 
print(superior_21)

#Muestre el promedio del promedio de los estudiantes de determinado sexo
promedio_por_sexo = df.groupby("sexo")["promedio"].mean()

print("peromedio del promedio por sexo:")
print(promedio_por_sexo)

#Muestre todos los datos del estudiante de mayor edad

indice= df["edad"].idxmax()
estudiante_mayor = df.loc[indice]

print("estudiante con la moyor edad:")
print(estudiante_mayor)

#Muestre todos los datos del estudiante cuya edad sea igual a 20 o su promedio sea mayor a 4.5

filtro = df[(df["edad"] == 20) | (df["promedio"] > 4.5)]

print("Estudiantes con edad = 20 O promedio > 4.5:")
print(filtro)