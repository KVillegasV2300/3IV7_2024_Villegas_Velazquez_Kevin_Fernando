# funcion
def binarioAnumero(numeroBi):
    sumaTotal = 0
    numeroIt = []

    #poner en un string
    for i in numeroBi:
        print(type(i))
        if i == '1' or i == '0':
            numeroIt.append(int(i))  
        print(numeroIt)

    #calcular digitos
    limit = len(numeroIt)

    for i in range(limit):
        if numeroIt[i] == 1:
            sumaTotal += 2**(limit-(i+1))
            print(sumaTotal)
    
    
    print("el numero decimal es: ", sumaTotal)


numeroBi = ""
numeroBi = str(input("Ingrese el numero binario "))

binarioAnumero(numeroBi)






