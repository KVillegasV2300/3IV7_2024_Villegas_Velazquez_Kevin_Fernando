import tkinter as tk
from tkinter import messagebox

#vamos a crear la interfaz

def crear_interfaz(logica):
    #creamos la ventan
    global logica_pila
    global pila
    global ventana
    global entrada_elemento
    global etiqueta_pila
    
    logica_pila = logica
    
    pila = logica_pila["crear_pila"]()
    ventana = tk.Tk()
    ventana.title("manejo de pila")
    ventana.geometry("400x400")

    #componentes de la interfaz
    tk.Label(ventana, text= "Manejo de una pila", font=("Arial", 16)).pack(pady=10)

    entrada_elemento = tk.Entry(ventana, width=30)
    entrada_elemento.pack(pady=5)
    tk.Button(ventana, text="Apilar", command=manejar_apilar).pack(pady=5)
    tk.Button(ventana, text="Desapilar", command=manejar_desapilar).pack(pady=5)
    tk.Button(ventana, text="Ver cima", command=manejar_cima).pack(pady=5)
    tk.Button(ventana, text="Ver tamaño", command=manejar_tamano).pack(pady=5)
    tk.Button(ventana, text="Mostrar cima", command=manejar_cima).pack(pady=5)

    etiqueta_pila = tk.Label(ventana, text="pila actual:[]", font=("Arial",12))
    etiqueta_pila.pack(pady=20)

    ventana.mainloop()


#necesitamos a una pila para realizar las invocaciones


#funciones de la interfaz
def manejar_apilar():
    elemento = entrada_elemento.get()
    if elemento:
        logica_pila["apilar"](pila, elemento)
        actualizar_pila()
        entrada_elemento.delete(0, tk.END)
    else:
        messagebox.showwarning("Entrada vacia", "porfavor ingresa un elemento")

def manejar_desapilar():
    try:
        elemento = logica_pila["desapilar"](pila)
        messagebox.showinfo("Desapilar", f"Eelemento desapilado:{elemento}")
        actualizar_pila()
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejar_cima():
    try:
        elemento = logica_pila["cima"](pila)
        messagebox.showinfo("Cima", f"Eelemento en la cima:{elemento}")
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejar_tamano():
    tam = logica_pila["tamano"](pila)
    messagebox.showinfo("tamaño", f"el tamaño de la pila es: {tam}")

def manejar_mostrar():
    pila_actual = logica_pila["mostrar_pila"](pila)
    messagebox.showinfo("Pila actua", pila_actual)

def actualizar_pila():
    pila_actual = logica_pila["mostrar_pila"](pila)
    etiqueta_pila.config(text = pila_actual)

