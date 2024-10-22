import math

#vamos a crear una funcion para calcular el area y perimetro

def rectangulo(base, altura):
    area = base * altura
    perimetro = 2*(base+altura)

    return area, perimetro

def triangulo(base, altura, lado1, lado2, lado3):
    area = (base * altura)/2
    perimetro = lado1 + lado2 + lado3

    return area, perimetro

def esfera(radio):
    volumen = (4/3)*math.pi*radio**3

    return volumen

def menu():
    print("CALCULADORA DE FIGURAS")
    print("elije una opcion")
    print("A- area y perimetro de un rectangulo")
    print("B- area y perimetro de un triangulo")
    print("C- Volumen de esfera")

#programa
menu()
opcion = input("Introduce la opcion a desear: ").upper()

if opcion == "A":
    base = float(input("Introduce la base: "))
    altura = float(input("Introduce la altura: "))

    area, perimetro = rectangulo(base, altura)

    print("El area es de 2: %s, y el perimetro es de %s" % (area, perimetro))
elif opcion == "B":
    base = float(input("Introduce la base"))
    altura = float(input("Introduce la altura: "))
    lado1 = float(input("Introduce el lado 1: "))
    lado2 = float(input("Introduce el lado 2: "))
    lado3 = float(input("Introduce el lado 3: "))

    area, perimetro = triangulo(base, altura, lado1, lado2, lado3)

    print("El area es de %s, y el perimetro es de %s" % (area, perimetro))
elif opcion == "C":
    radio = float(input("Introduce el radio: "))
    volumen = esfera(radio)

    print("El volumen es de: ", volumen)
else:
    print("No valida")


#ejercicio de convertir un numero decimal en binario y de binario en decimal

