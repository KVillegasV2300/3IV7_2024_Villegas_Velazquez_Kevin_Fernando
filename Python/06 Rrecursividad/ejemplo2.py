def factorial(n):
    #caso base
    if n==0 or n== 1:
        return 1
    else:
        return n * factorial(n-1)

numero = int(input("Introduce el numero para calcular factorial"))
resultado = factorial(numero)
print(f"el factorial de {numero} es {resultado}")