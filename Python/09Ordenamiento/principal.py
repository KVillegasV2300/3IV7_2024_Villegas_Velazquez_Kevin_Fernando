import pila 
import vista 
import ordenamiento

#definir diccionario de las funciones del archivo para que pueda oinvocarlas.
def main():
    global logica_pila
    global logica_ordenamiento
    #diccionario de las funciones de pila
    logica_pila = {
        "crear_pila" : pila.crear_pila,
        "apilar" : pila.apilar,
        "desapilar" : pila.desapilar,
        "mostrar_pila" : pila.mostrar_pila,
        "vaciar_pila" : pila.vaciar_pila
    }

    logica_ordenamiento = {
        "burbuja" : ordenamiento.burbuja,
        "sort" : ordenamiento.selecciom_sort,
        "insercion" : ordenamiento.insercion,
        "merge" : ordenamiento.merge_sort,
        "quick" : ordenamiento.quick_sort
    }

#crear la interfaz e invocarla

main()
vista.crear_interfaz(logica_pila, logica_ordenamiento)