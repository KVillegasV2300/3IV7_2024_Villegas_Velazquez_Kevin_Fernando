# numero


sumaTotal = 0
numeroBi = ""
numeroIt = []

#programa

numeroBi = str(input("Ingrese el numero binario "))

#poner en un string
for i in numeroBi:
    numeroIt.append(i)

#calcular digitos
for i  in range(len(numeroBi)):
    if numeroIt[i] == "1":
        sumaTotal += 2**(len(numeroBi)-(i+1))

print("el numero decimal es: ", sumaTotal)