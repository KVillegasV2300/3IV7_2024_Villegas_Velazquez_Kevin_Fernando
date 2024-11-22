#Una lista es muy parecido a un arreglo, solo que es una estructura mas versatil la cual puede manejar (enteros, flotantes, cadenas, caracteres, etc)

#vamos a crear una lista de estudiantes

estudiantes = ["Ana", "Hugo", "Paco", "Luis"]

#metodos propios de append(x) Agregar un elemento, al final, insert(i, x), inserta un elemento en una posicion especifica, remove(x)

#agregar un estudiante
estudiantes.append("Diana")
print("Listas de de estudiantes", estudiantes)

#eliminar a uno
estudiantes.remove("Paco")
print("Listas de de estudiantes", estudiantes)
