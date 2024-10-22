#Esto es un comentario

#vamos a definir una variable
x = 17

print(x)

# ejemplo de if 

valores = [1,6,8,9,5]

if 5 in valores:
    #cuando sea verdad
    print("si esta")
else:
    #cuando sea falso
    print("No esta")

x = 28

if x < 0:
    #el valor es menor
    print("es menor que 0")
elif x > 0:
    #el valor es mayor
    print("es mayor que 0")
else:
    print("es cero")

#bucles

numero = 0
print("tabla 2")

while numero <= 10 :
    resultado = numero * 2
    print("resultado:", resultado)
    numero += 1

for i in valores:
    print(i)

"""
def suma(num1, num2):
    print(num1 + num2)

n1 = int(input("Ingrese el numero 1: "))
n2 = int(input("Ingrese el numero 2: "))

suma(n1, n2)

for i in range(100):
    print(i)
"""