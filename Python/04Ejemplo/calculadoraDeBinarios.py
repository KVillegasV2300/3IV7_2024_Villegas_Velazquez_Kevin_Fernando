import math

#binario a numero
def binarioAnumero(numeroBi):
    sumaTotal = 0
    numeroIt = []

    #poner en un string
    for i in numeroBi:
        if i == '1' or i == '0':
            numeroIt.append(int(i))  
    #calcular digitos
    limit = len(numeroIt)

    for i in range(limit):
        if numeroIt[i] == 1:
            sumaTotal += 2**(limit-(i+1))
    
    return sumaTotal

#decimal a numero
def decimalAbinario(num):
    binario = ""
    if num > 0:
        while num > 0:
            residuo = num%2
            division = num/2
    
            binario = str(residuo) + binario
            num = math.trunc(division)
        return binario
    elif num == 0:
        binario = "0"
        return binario

#menu
def lineas(cantidad):
    separacion = "-" * cantidad
    print(separacion)

def menu():
    lineas(50)
    print("CALCULADORA DE BINARIOS")
    lineas(50)
    print("elije una opcion")
    print("A- Binario a decimal")
    print("B- Decimal a binario")
    print("C- salir")

#programa
opcion = ""

while opcion != "C":
    menu()
    opcion = input("Introduce la opcion a desear: ").upper()

    if opcion == "A":
        binarioBi = str(input("Ingrese el binario que desea transformar: "))
        resultado = binarioAnumero(binarioBi)

        print("el numero decimal es: ", resultado)
        lineas(50)
        input("presione enter para continuar: ")
    elif opcion == "B":
        num = int(input("Ingrese el decimal que desea transformar: "))
        resultado = decimalAbinario(num)

        print("El binario es: ", resultado)
        lineas(50)
        input("presione enter para continuar: ")
    elif opcion == "C":
        pass
    else:
        print("No valida")