class Empresa:
    
    def __init__(self, nombre, nit):
        self.nombre = nombre
        self.nit = nit
        self.departamentos = []
    
    def agregar_departamento(self, departamento):
        self.departamentos.append(departamento)

class Departamento:
    
    def __init__(self, nombre):
        self.nombre = nombre
        self.empleados = []
    
    def agregar_empleado(self, empleado):
        self.empleados.append(empleado)


class Empleado:
    
    def __init__(self, identificacion, nombre, salario):
        self.identificacion = identificacion
        self.nombre = nombre
        self.salario = salario
    
    def calcular_salario(self):
        return self.salario


class Administrativo(Empleado):
    
    def __init__(self, identificacion, nombre, salario, bono):
        super().__init__(identificacion, nombre, salario)
        self.bono = bono
    
    def calcular_salario(self):
        return self.salario + self.bono


class Operativo(Empleado):
    
    def __init__(self, identificacion, nombre, horas_trabajadas, valor_hora):
        super().__init__(identificacion, nombre, 0)
        self.horas_trabajadas = horas_trabajadas
        self.valor_hora = valor_hora
    
    def calcular_salario(self):
        return self.horas_trabajadas * self.valor_hora


class Contrato:
    
    def __init__(self, tipo, fecha_inicio, fecha_fin):
        self.tipo = tipo
        self.fecha_inicio = fecha_inicio
        self.fecha_fin = fecha_fin