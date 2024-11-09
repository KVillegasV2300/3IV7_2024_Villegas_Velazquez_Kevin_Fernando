#derivado a que es necesario poder almacenar diferentes fuentes de datos en python se utiliza la variable diccionario
#un diccionario es capaz de almacenar diferentes tipos de daros en formato de lista

#el examen debe de tener 8 elementos (datos) de la lista que desen guardar
#el examen debe de posee de dialogo y mensaje de salida con tkinter
#la lista debe implementar al menos 30 diferentes elementos y debe verse  


import tkinter as tk
from tkinter import *
from tkinter import messagebox, simpledialog

#para poder guardar los dartos correspondientes de la lista es necesaio utilizar un archivo, para ello vamos a ocupar la librerio os
import os

#vamos a declarar un rachivo, tenemos dos opciones, una ruta dinamica a una estatica, de tarea
#la ruta estatica ya esta declarado desde el incio
#y la dinamica es cuando debe cambiar entre varios equipos

ARCHIVO = "alumnos.txt"

#primero vamos a crear una lista de alumnos

alumnos = []

#vamos a crear una funcion para cargar datos (escribir)
def cargar_datos(): #leer y append
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for lineas in f:
                #que voy a obtener por cada linea
                #es un metodo de cadena que nos ayuda a eliminar espacios al incio y al final de una cadena " habia  "
                partes = lineas.strip().split(",")
                
                if len(partes) >= 6:
                    #el len es para ver todos los datos
                    boleta = partes[0]
                    nombre = partes[1]
                    apellido_paterno = partes[2]
                    apellido_materno = partes[3]
                    fecha_nacimiento = partes[4]
                    calificaciones = list(map(float, partes[5:]))
                    alumno ={
                        "boleta" : boleta,
                        "nombre" : nombre,
                        "apellido_paterno" : apellido_paterno,
                        "apellido_materno" : apellido_materno,
                        "fecha_nacimiento" : fecha_nacimiento,
                        "calificaciones" : calificaciones
                    }
                    alumnos.append(alumno)
                
cargar_datos()
#vamos a crear la funcion para guardar los datos
def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for alumno in alumnos:
            f.write(f"{alumno['boleta']}, {alumno['nombre']}, {alumno['apellido_paterno']}, {alumno['apellido_materno']}, {alumno['fecha_nacimiento']}, {','.join(map(str,alumno['calificaciones']))}")

#vamos a crear una funcion que se encargue de registrar un alumno

#funciones
def registrar_alumno():
    boleta = simpledialog.askstring("Entrada" ,"Ingresa la boleta del alumno: ")
    nombre = input("Ingresa el nombre del alumno: ")
    appat = input("Ingresa el apellido paterno del alumno: ")
    apmat = input("Ingresa el apellido materno del alumno: ")
    fecnac = input("Ingres la fecha de nacimiento(dd/mm/aaaa) del alumno: ")

    calificaciones=[]
    #vamos a solicitar a 3 calificaciones
    for i in range(1,4):
        calificacionParcial = float(input(f"Ingrese la calificacion del parcial {i}"))
        calificaciones.append(calificacionParcial)
    #definir al alumno

    alumno ={
        "boleta" : boleta,
        "nombre" : nombre,
        "apellido_paterno" : appat,
        "apellido_materno" : apmat,
        "fecha_nacimiento" : fecnac,
        "calificaciones" : calificaciones
    }

    alumnos.append(alumno)
    guardar_datos()
    messagebox.showinfo("exito","El alumno se registro exitosamente")

#funcion para consultar los datos del arreglo de alunos (lista)

def consultar_alumno():
    if not alumnos:
        print("Bo hay registros solo juguito contigo")
    else:
        print("Lista de alumnos: \n")
        for alumno in alumnos:
            print(f"Boleta: {alumno['boleta']}, Nombre: {alumno['nombre']} {alumno['apellido_paterno']} {alumno['apellido_materno']}, Fecha de nacimiento: {alumno['fecha_nacimiento']}, Calificaciones: {alumno['calificaciones']}\n")

#funcion para buscar y editar por la boleta

def editar_alumno() :
    boleta = input("Ingrese ka boleta del alumno que desea editar")

    for alumno in alumnos :
        if alumno['boleta'] == boleta:
            alumno['nombre'] = input("Ingresa el nuevo nombre o presiona enter para manttener el actual: ") or alumno['nombre']
            alumno['apellido_paterno'] = input("Ingresa el nuevo apellido_paterno o presiona enter para manttener el actual: ") or alumno['apellido_paterno']
            alumno['apellido_materno'] = input("Ingresa el nuevo apellido_materno o presiona enter para manttener el actual: ") or alumno['apellido_materno']
            alumno['fecha_nacimiento'] = input("Ingresa la nueva fecha de nacimiento o presiona enter para manttener el actual: ") or alumno['fecha_nacimiento']

            #editar calificacion

            for i in range(3):
                nueva_calificacion = input("Ingresa la nueva calificacion o presione enter para mantener el actual:")
                if nueva_calificacion:
                    alumno['calificaciones'][i] = float (nueva_calificacion)
    return
    #print("No hay alumnos")

def main():
    while True:
        print("Menu de gestion de proximos extras")
        print("1.- Registrar alumno")
        print("2.- Consultar lista de alumnos")
        print("3.- Editar alumno")
        print("4.- Eliminar alumno")
        print("5.- salir")

        opcion = input("Ingrese la opcion a elegir: ")

        if opcion == '1':
            registrar_alumno()
        elif opcion == '2':
            consultar_alumno()
        elif opcion == "3":
            editar_alumno()
        elif opcion == "4":
            #se crea elñ de eliminar
            pass
        elif opcion == '5':
            print("salte w")
            break
        else:
            print("opcion no valida")

main()
