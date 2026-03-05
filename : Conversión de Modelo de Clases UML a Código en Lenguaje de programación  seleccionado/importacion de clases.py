from clases import *

# crear empresa
empresa1 = Empresa("TechSoft", "900123456")

# crear departamentos
dep_sistemas = Departamento("Sistemas")
dep_rrhh = Departamento("Recursos Humanos")

# agregar departamentos a la empresa
empresa1.agregar_departamento(dep_sistemas)
empresa1.agregar_departamento(dep_rrhh)

# crear empleados
emp1 = Administrativo(1, "Carlos Perez", 2000, 500)
emp2 = Operativo(2, "Ana Torres", 160, 15)
emp3 = Administrativo(3, "Luis Gomez", 1800, 300)

# agregar empleados a departamentos
dep_sistemas.agregar_empleado(emp1)
dep_sistemas.agregar_empleado(emp2)
dep_rrhh.agregar_empleado(emp3)

# recorrer departamentos y empleados
print("EMPRESA:", empresa1.nombre)
print("NIT:", empresa1.nit)

print("\nDEPARTAMENTOS Y EMPLEADOS")

for dep in empresa1.departamentos:
    
    print("\nDepartamento:", dep.nombre)
    
    for emp in dep.empleados:
        
        print("Empleado:", emp.nombre)
        
        # POLIMORFISMO
        salario = emp.calcular_salario()
        
        print("Salario:", salario)
        print("-" * 20)