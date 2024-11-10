import math

#funcion
def decimalAbinario(num):
    binario = ""
    if num > 0:
        while num > 0:
            residuo = num%2
            division = num/2
    
            binario = str(residuo) + binario
            num = math.trunc(division)
        print("El numero binario es:", binario)
    elif num == 0:
        binario = "0"
        print("El numero binario es: ", binario)



num = int(input("Ingrese el numero decimal: "))

decimalAbinario(num)


