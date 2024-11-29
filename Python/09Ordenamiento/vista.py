import tkinter as tk
import time
import copy
from tkinter import *
from tkinter import messagebox


def crear_interfaz(logica_pila, logica_ordenamiento):
    pila = logica_pila["crear_pila"]()
    ventana = tk.Tk()
    ventana.geometry("400x500")
    ventana.title("Metodos de ordenamiento")

    #componentes de la interfaz

    tk.Label(ventana, text= "Inserta una lista a ordenar", font=("Arial", 16)).pack(pady=10)

    #insertar widget de texto
    etiqueta_pila = Text(ventana, height=2, width=24)
    etiqueta_pila.pack()

    #maximo y minimo del texto
    contador_pila = tk.Label(ventana, text = f"{len(pila)}/40")
    contador_pila.pack(pady=2)

    entrada_elemento = tk.Entry(ventana, width=30)
    entrada_elemento.pack(pady=5)

    #creamos el frma de apilar y desapilar
    btn_apilar = Frame(ventana)
    tk.Button(btn_apilar, text="Agregar", command=lambda : manejar_apilar()).grid(row = 0, column = 0 )
    tk.Button(btn_apilar, text="Eliminar", command=lambda : manejar_desapilar()).grid(row = 0, column= 1)
    btn_apilar.pack()
    tk.Button(btn_apilar, text="Limpiar", command=lambda : manejar_vaciar()).grid(row = 0, column= 3)

    tk.Label(ventana, text="Elije el metodo de ordenamiento", font=("Arial", 16)).pack(pady=10)

    tk.Button(ventana, text="burbuja", command= lambda : metodos("burbuja")).pack(pady=5)
    tk.Button(ventana, text="seleccion_sort", command= lambda : metodos("sort")).pack(pady=5)
    tk.Button(ventana, text="insercion", command= lambda : metodos("insercion")).pack(pady=5)
    tk.Button(ventana, text="merge", command= lambda : metodos("merge")).pack(pady=5)
    tk.Button(ventana, text="quick_sort", command= lambda : metodos("quick")).pack(pady=5)


    def metodos(metodo):
        pila_actual = pila.copy() #hacemos una copia

        #timer
        inicio = time.time()
        lista_ord = logica_ordenamiento[metodo](pila_actual)
        fin = time.time()
        tiempo = fin-inicio

        messagebox.showinfo(f"Metodo {metodo}", f"lista original: {pila} \n lista ordenada: {pila_actual}, \n Tiempo: {tiempo:.7f}")

    #funciones de la interfaz
    def manejar_apilar():
        elemento = entrada_elemento.get()
        if elemento:
            if len(pila) != 40:
                logica_pila["apilar"](pila, int(elemento))
                entrada_elemento.delete(0, tk.END)
                actualizar_pila()
            else:
                messagebox.showwarning("Maximo", "Ha alcanzado el limite de entradas")
        else:
            messagebox.showwarning("Entrada vacia", "porfavor ingresa un elemento")

    def manejar_desapilar():
        try:
            elemento = logica_pila["desapilar"](pila)
            messagebox.showinfo("Desapilar", f"Eelemento desapilado:{elemento}")
            actualizar_pila()
        except IndexError as e:
            messagebox.showerror("Error", str(e))
    
    def manejar_vaciar():
        logica_pila["vaciar_pila"](pila)
        actualizar_pila()
        messagebox.showinfo("Limpio", "La lista a sido limpiada")


    def actualizar_pila():
        etiqueta_pila.delete('1.0', END)
        pila_actual = logica_pila["mostrar_pila"](pila)
        
        etiqueta_pila.insert(END, f"{pila_actual}")
        contador_pila.config(text = f"{len(pila)}/40")
    
    ventana.mainloop()
    