import pila 
import vista 

#definir diccionario de las funciones del archivo para que pueda oinvocarlas.
def main():
    global logica_pila
    #diccionario de las funciones de pila
    logica_pila = {
        "crear_pila" : pila.crear_pila,
        "apilar" : pila.apilar,
        "desapilar" : pila.desapilar,
        "cima" : pila.cima,
        "esta_vacia" : pila.esta_vacia,
        "tamano" : pila.tamano,
        "mostrar_pila" : pila.mostrar_pila
    }

#crear la interfaz e invocarla

main()
vista.crear_interfaz(logica_pila)
