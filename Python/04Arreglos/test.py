# vamos a crear una suma de matrices de 3x3

def ingresar_matriz():
    matriz = []
    print("Introduce los valores de la matriz de 3x3")

    for i in range(5):
        fila = []
        for j in range(5):
            valor = float(input(f"Elemento: [{i+1}][{j+1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def sumar_matriz(matriz1,matriz2):
    matriz_suma = []

    for i in range(5):
        fila = []
        for j in range(5):
            fila.append(matriz1[i][j] + matriz2[i][j])
        matriz_suma.append(fila)
    return matriz_suma

def transposicion_matriz(matriz1, matriz2):
    matriz_trans =[]

    for j in range(5):
        fila = []
        for i in range(5):
            fila.append(matriz1[i][j] + matriz2[i][j])
        matriz_trans.append(fila)
    return matriz_trans


def imprimir_matriz(matriz):
    
    fila = []
    for fila in matriz:
        print(fila)

#mi programa
print("Matriz1: ")
matriz1 = ingresar_matriz()
print("Matriz1: ")
matriz2 = ingresar_matriz()

#la suma
matriz_resultado = sumar_matriz(matriz1, matriz2)

matriz_transposicion =  transposicion_matriz(matriz1, matriz2)

#muestra el resultado
print("El resultado es: ")
imprimir_matriz(matriz_resultado)
print("El resultado con transposicion es:")
imprimir_matriz(matriz_transposicion)
#hacer una transposicion de filas a columnas de una matriz de 3*3 y de 5*5