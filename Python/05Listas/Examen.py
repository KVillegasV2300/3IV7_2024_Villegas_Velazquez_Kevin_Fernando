#derivado a que es necesario poder almacenar diferentes fuentes de datos en python se utiliza la variable diccionario
#un diccionario es capaz de almacenar diferentes tipos de daros en formato de lista

#el examen debe de tener 8 elementos (datos) de la lista que desen guardar
#el examen debe de posee de dialogo y mensaje de salida con tkinter
#la lista debe implementar al menos 30 diferentes elementos y debe verse  


import tkinter as tk
from tkinter import *
from tkinter import messagebox, simpledialog
from PIL import Image, ImageTk                  #pip install pillow
import os

#primero vamos a crear una lista de alumnos
tamagotchis = []

#vamos a colocar los datos en un txt :0

ARCHIVO = "tm.txt"

#vamos a crear una funcion para cargar datos (escribir)
def cargar_datos(): #leer y append
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for lineas in f:
                #que voy a obtener por cada linea
                #es un metodo de cadena que nos ayuda a eliminar espacios al incio y al final de una cadena " habia  "
                partes = lineas.strip().split(",")
                
                if len(partes) >= 8:
                    #el len es para ver todos los datos
                    ID = partes[0]
                    n = partes[1]
                    nm = partes[2]
                    y = partes[3]
                    pa = partes[4]
                    pi = partes[5]
                    t = partes[6]
                    e = partes[7]
                    nombres = list(map(str, partes[8:]))
                    tama ={
                        "ID": ID,                
                        "n": n,        
                        "nm": nm,                    
                        "y": y,              
                        "pa": pa,       
                        "pi": pi,              
                        "t": t,              
                        "e": e,                
                        "nombres": nombres
                    }
                    tamagotchis.append(tama)
                
#vamos a crear la funcion para guardar los datos
def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for tm in tamagotchis:
            f.write(f"{tm['ID']}, {tm['n']}, {tm['nm']}, {tm['y']}, {tm['pa']}, {tm['pi']}, {tm['t']}, {tm['e']}, {','.join(map(str,tm['nombres']))} \n")

cargar_datos()

#vamos a crear una funcion que se encargue de registrar un alumno

#funciones
def registrar_tamagotchi():
    Id = simpledialog.askstring("REGISTRO","Ingrese el id que desea asiganrle: ")

    #filtro si existe
    for tm in tamagotchis:
        if tm["ID"] == Id:
            messagebox.showinfo("ERROR","El tamagotchi ya EXISTE")
            return
    
    nombre = simpledialog.askstring("REGISTRO","Ingresa el nombre del tamagotchi: ")
    numeroM = int(simpledialog.askstring("REGISTRO","Ingresa el numero de botones disponibles: "))
    feclan = simpledialog.askstring("REGISTRO","Ingresa la fecha de lanzamiento: ")
    pila = simpledialog.askstring("REGISTRO","Ingresa el tipo de pila que contiene: ")
    pantalla = simpledialog.askstring("REGISTRO","Ingrese el tipo de pantalla que tiene: ")
    tam = simpledialog.askstring("REGISTRO","Ingrese el tamaño del tamagotchi: ")
    edicion = simpledialog.askstring("REGISTRO","Ingrese el tipo de edicion del tamagotchi")

    nombres=[]
    #vamos a solicitar a 3 calificaciones
    for i in range(1,4):
        colorestamagotchi = simpledialog.askstring("REGISTRO",f"Ingrese el nombre {i} : ")
        nombres.append(colorestamagotchi)
        #definir al alumno
    
    tamagotchi ={
        "ID": Id,
        "n": nombre,
        "nm": numeroM,
        "y": feclan,
        "pa": pantalla,
        "pi": pila,
        "t": tam,
        "e": edicion,
        "nombres": nombres
    }

    tamagotchis.append(tamagotchi)
    guardar_datos()
    messagebox.showinfo("EXITO","El tamagotchi se ha registrado exitosamente")
            

#funcion para consultar los datos del arreglo de alunos (lista)

def consultar_tamagotchi():
    if not tamagotchis:
        messagebox.showinfo("NO EXITENCIA","no hay tamagotchis existentes")
    else:
        #creamos ventana de consulta
        ventana_consultar = tk.Toplevel(root)
        ventana_consultar.title("Consultar_tamagotchis")
        ventana_consultar.resizable(False, False)
        
        #ventana_consultar.geometry("400x300")
        ventana_consultar.configure(bg="#E6FFE6")
        #insertar widget de texto
        consulta = Text(ventana_consultar)
        consulta.pack()

        for tm in tamagotchis:
            consulta.insert(END, f"ID: {tm["ID"]} \n Nombre: {tm["n"]}, Numero de botones: {tm["nm"]}, Año de lanzamiento: {tm["y"]}, Tipo de pantalla: {tm["pa"]}, Tipo de pila: {tm["pi"]}, Tamaño: {tm["t"]}, Edicion: {tm["e"]}, nombres: {tm["nombres"]}\n\n")
        consulta.config(state=tk.DISABLED)
        salir = Button(ventana_consultar, text="salir", command=lambda: ventana_consultar.destroy(), width=30, bg="#B6A4E0")
        salir.pack(pady=20)

def buscar_tamagotchi():
    b_id = simpledialog.askstring("BUSCAR","Ingrese el id del tamagotchi que desea editar")
    for tm in tamagotchis:
        if tm["ID"] == b_id:
            #creamos ventana de consulta
            ventana_consultar = tk.Toplevel(root)
            ventana_consultar.title("Consultar_tamagotchis")
            ventana_consultar.resizable(False, False)
            
            #ventana_consultar.geometry("400x300")
            ventana_consultar.configure(bg="#E6FFE6")
            #insertar widget de texto
            consulta = Text(ventana_consultar, height= 12)
            consulta.pack()
            consulta.insert(END, f"ID: {tm["ID"]} \n Nombre: {tm["n"]}\n Numero de botones: {tm["nm"]}\n Año de lanzamiento: {tm["y"]}\n Tipo de pantalla: {tm["pa"]}\n Tipo de pila: {tm["pi"]}\n Tamaño: {tm["t"]}\n Edicion: {tm["e"]}\n nombres: {tm["nombres"]}\n\n")
            consulta.config(state=tk.DISABLED) #texto no editable
            #boton para salir
            salir = Button(ventana_consultar, text="salir", command=lambda: ventana_consultar.destroy(), width=30, bg="#B6A4E0")
            salir.pack(pady=20)
            return
    #si no se encuentra
    messagebox.showinfo("Missing",f"No se encontro el tamagotchi con id {b_id}")

#funcion para editar por boleta
def editar_tamagotchi() :
    b_id = simpledialog.askstring("EDITAR","Ingrese el id del tamagotchi que desea editar")

    for tm in tamagotchis:
        if tm["ID"] == b_id:
            tm["n"] = simpledialog.askstring(f"{tm["n"]} : {tm["nm"]}","Nombre o presiona enter para mantener el actual: ") or tm["n"]
            tm["nm"] = simpledialog.askstring(f"{tm["n"]}","Numero de mascota o presiona enter para mantener el actual: ") or tm["nm"]
            tm["y"] = simpledialog.askstring(f"{tm["n"]}","Año de lanzamiento o presiona enter para mantener el actual: ") or tm["y"]
            tm["pa"] = simpledialog.askstring(f"{tm["n"]}","Tipo de pantalla o presiona enter para mantener el actual: ") or tm["pa"]
            tm["pi"] = simpledialog.askstring(f"{tm["n"]}","Tipo de pila o presiona enter para mantener el actual: ") or tm["pi"]
            tm["t"] = simpledialog.askstring(f"{tm["n"]}","Tamaño o presiona enter para mantener el actual: ") or tm["t"]
            tm["e"] = simpledialog.askstring(f"{tm["n"]}","Edicion o presiona enter para mantener el actual: ") or tm["e"]

            #editar calificacion
            for i in range(1,4):
                nuevo_nombre = simpledialog.askstring(f"EDITAR",f"Ingresel nombre {i} del tamagotchi o presione enter para mantener el actual:")
                if nuevo_nombre:
                    tm["nombres"][i] = nuevo_nombre
            guardar_datos()
            messagebox.showinfo("EXITO","El tamagotchi se ha editado exitosamente")
            return
    
    #si no se encuentra
    messagebox.showinfo("Missing",f"No se encontro el tamagotchi con id {b_id}")
        

#funcion para eliminar por boleta

def eliminar_tamagotchi():
    b_id = simpledialog.askstring("ELIMINAR","Ingrese el id del tamagotchi que desea eliminar")

    for tm in tamagotchis:
        if tm["ID"] == b_id:
            tamagotchis.remove(tm)
            messagebox.showinfo("EXITO","El tamagotchi se ha removido exitosamente")
            guardar_datos()
            return
    
    messagebox.showinfo("Missing",f"No se encontro el tamagotchi con id {b_id}")
    return
    
def imagen():
    image = Image.open("Python/05Listas/tm.png")
 
    # Resize the image using resize() method
    resize_image = image.resize((190, 180))
    
    img = ImageTk.PhotoImage(resize_image)
 
    # create label and add resize image
    label1 = Label(image=img)
    label1.image = img
    label1.place(x=350,  rely=0.4)


def main():
    global root
    root = Tk()
    root.geometry("500x310")
    root.resizable(False, False)
    #encabezado
    imagen()
    titulo_label = Label(root, text="Tamagotchis", font=("Arial", 24, "bold"), bg="#6366E0", fg="white")
    titulo_label.pack(fill="x")

    #agregar los botones de opciones
    registar = Button(root, text="Registrar tamagotchi", command=registrar_tamagotchi, width=30, bg="#C5C6E0")
    registar.pack(pady=5)

    consultar = Button(root, text="Consultar tamagotchi", command=consultar_tamagotchi, width=30, bg="#C5C6E0")
    consultar.pack(pady=5)

    buscar = Button(root, text="Buscar tamagotchi", command=buscar_tamagotchi, width=30, bg="#C5C6E0")
    buscar.pack(pady=5)

    editar = Button(root, text="Editar tamagotchi", command=editar_tamagotchi, width=30, bg="#C5C6E0")
    editar.pack(pady=5)

    eliminar = Button(root, text="Eliminar tamagotchi", command=eliminar_tamagotchi, width=30,bg="#C5C6E0")
    eliminar.pack(pady=5)

    salir = Button(root, text="salir", command=lambda: root.quit(), width=30, bg="#B6A4E0")
    salir.pack(pady=20)

    titulo_label = Label(root, bg="#6366E0", fg="white")
    titulo_label.pack(fill="x")

    root.mainloop()
    
        
main()