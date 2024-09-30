Algoritmo STOCKS
	
	NPRODUCTOS = 0
	
	Dimension ID[100] 
	Definir ID Como Caracter
	Dimension CANTIDAD[100]
	Definir CANTIDAD Como Entero
	Dimension PRECIO[100]
	Definir PRECIO Como Real
	
	ACCION = " "
	Definir d Como Caracter
	
	Mientras APAGADO = Falso Hacer
		Escribir "--------------------------------------------------------------"
		Escribir "	                    GESTION DE PRODUCTOS					 "
		Escribir "--------------------------------------------------------------"
		Escribir "Escriba la accion que desea hacer:"
		Escribir "-ACTUALIZAR"
		Escribir "-AGREGAR"
		Escribir "-INVENTARIO"
		Escribir "-REPORTE"
		leer ACCION
		
		Segun ACCION Hacer
			"ACTUALIZAR":
				Limpiar Pantalla
				Escribir "--------------------------------------------------------------"
				Escribir "¿Cuantos productos deseas editar?"
				Escribir "--------------------------------------------------------------"
				Leer NPRODUCTOS
				Para i = 1 Hasta NPRODUCTOS Con Paso 1 Hacer
					Escribir "--------------------------------------------------------------"
					Escribir "Producto " i
					Escribir "Ingrese el id del producto que desea editar"
					Leer n
					si ID[n] <> "" Entonces
						Escribir "Deseas editar " ID[n] " ? S/N"
						Leer d
						Segun d Hacer
							"S":
								Escribir "CANTIDAD"
								leer CANTIDAD[n]
								Escribir "--------------------------------------------------------------"
								Escribir "Editado con exito"
								Escribir "--------------------------------------------------------------"
								Escribir "Presione Enter"
								Leer tecla
								Limpiar Pantalla
							"N":
								Limpiar Pantalla
								i =  i - 1 
							De Otro Modo:
								Limpiar Pantalla
								escribir "Por favor ingrese un caracter valido"
								i =  i - 1 
						Fin Segun
					SiNo
						Limpiar Pantalla
						escribir "Ese producto no existe"
						Escribir "--------------------------------------------------------------"
						Escribir "¿Deseas continuar? S/N"
						Leer d
						Segun d Hacer
							"S":
								Limpiar Pantalla
								i =  i - 1 
							"N":
								Limpiar Pantalla
							De Otro Modo:
								Limpiar Pantalla
								escribir "Por favor ingrese un caracter valido"
								i =  i - 1 
						Fin Segun
					FinSi
				Fin Para
				
			"AGREGAR":
				Limpiar Pantalla
				Escribir "--------------------------------------------------------------"
				Escribir "¿Cuantos productos desea agregar?"
				Escribir "--------------------------------------------------------------"
				Leer NPRODUCTOS
				Para i = 1 Hasta NPRODUCTOS Con Paso 1 Hacer
					Escribir "--------------------------------------------------------------"
					Escribir "Producto " i
					Escribir "ID"
					Leer n
					si ID[n] <> "" Entonces
						Limpiar Pantalla
						Escribir "este producto ya existe"
						i = i - 1
					SiNo
						Escribir "NOMBRE"
						Leer ID[n]
						Escribir "CANTIDAD"
						Leer CANTIDAD[n]
						Escribir "PRECIO"
						Leer PRECIO[n]
					FinSi
				Fin Para
				Escribir "--------------------------------------------------------------"
				Escribir "Se agrego con exito"
				Escribir "--------------------------------------------------------------"
				Escribir "Presione Enter"
				Leer tecla
				Limpiar Pantalla	
			"INVENTARIO":
				Limpiar Pantalla
				Escribir "--------------------------------------------------------------"
				Escribir "Inventario:"
				Para i = 1 Hasta 10 Con Paso 1 Hacer
					si ID[i] <> "" Entonces
						Escribir "ID " i " " ID[i] " N " CANTIDAD[i] " C " PRECIO[i] " P "
					FinSi
				Fin Para
				Escribir "--------------------------------------------------------------"
				Escribir "Presione Enter"
				Leer tecla
				Limpiar Pantalla
			De Otro Modo:
				Limpiar Pantalla
				Escribir "Por favor introduzca una accion valida "
		Fin Segun
		
	Fin Mientras
	
	
	
	//Escribir "El producto " n " es " ID[n] " con " CANTIDAD[n] " unidades en inventario y con un precio de " PRECIO[n] " PESOS"
FinAlgoritmo
