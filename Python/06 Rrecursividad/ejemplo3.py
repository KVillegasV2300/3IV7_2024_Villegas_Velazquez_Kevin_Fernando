def fibonacci(n):

    #caso base

    if n == 0:
        return 0
    elif n == 1:
        return 1
    #paso recursivo
    else:
        return fibonacci(n-1) + fibonacci(n-2)

#prueba de la funcion
n = int(input("Introduce el numero que desea: "))
resultado = fibonacci(n)
print(f"el resultado de fibbonaci de {n} es: {resultado}")