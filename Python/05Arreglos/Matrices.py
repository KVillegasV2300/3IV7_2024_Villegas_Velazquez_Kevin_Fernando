# vamos a crear una suma de matrices de 3x3

def ingresar_matriz(n):
    matriz = []
    print(f"Introduce los valores de la matriz de {n}x{n}")

    for i in range(n):
        fila = []
        for j in range(n):
            valor = float(input(f"Elemento: [{i+1}][{j+1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def sumar_matriz(matriz1,matriz2,n):
    matriz_suma = []

    for i in range(n):
        fila = []
        for j in range(n):
            fila.append(matriz1[i][j] + matriz2[i][j])
        matriz_suma.append(fila)
    return matriz_suma

def transposicion_matriz(matriz1, matriz2, n):
    matriz_trans =[]

    for j in range(n):
        fila = []
        for i in range(n):
            fila.append(matriz1[i][j] + matriz2[i][j])
        matriz_trans.append(fila)
    return matriz_trans


def imprimir_matriz(matriz):
    
    fila = []
    for fila in matriz:
        print(fila)

def lineas(cantidad):
    separacion = "-" * cantidad
    print(separacion)

def menu():
    print("¿Que tamaño de matriz desea calcular?")
    print("A- 3x3")
    print("B- 5x5")
    print("C- salir")

#mi programa
opcion = ""
while opcion != "C":
    
    lineas(50)
    menu()
    opcion = input("Introduce la opcion a desear: ").upper()

    if opcion == "A":
        lineas(50)
        print("Matriz1: ")
        matriz1 = ingresar_matriz(3)
        print("Matriz1: ")
        matriz2 = ingresar_matriz(3)

        #la suma
        matriz_resultado = sumar_matriz(matriz1, matriz2, 3)

        matriz_transposicion =  transposicion_matriz(matriz1, matriz2, 3)

        #muestra el resultado
        print("El resultado es: ")
        imprimir_matriz(matriz_resultado)
        print("El resultado con transposicion es:")
        imprimir_matriz(matriz_transposicion)

    elif opcion == "B":
        lineas(50)
        print("Matriz1: ")
        matriz1 = ingresar_matriz(5)
        print("Matriz1: ")
        matriz2 = ingresar_matriz(5)

        #la suma
        matriz_resultado = sumar_matriz(matriz1, matriz2, 5)

        matriz_transposicion =  transposicion_matriz(matriz1, matriz2, 5)

        #muestra el resultado
        print("El resultado es: ")
        imprimir_matriz(matriz_resultado)
        print("El resultado con transposicion es:")
        imprimir_matriz(matriz_transposicion)
    elif opcion == "C":
        pass
    else:
        lineas(50)
        print("No valida")




#hacer una transposicion de filas a columnas de una matriz de 3*3 y de 5*5