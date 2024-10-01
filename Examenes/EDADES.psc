Algoritmo EDADES
	
	DimensionesLista = 100
	
	Dimension nNombre[DimensionesLista)
	Definir nNombre  Como Caracter
	Dimension nNacimientos[DimensionesLista]
	Definir nNacimientos Como Entero
	Dimension nFallecimiento[DimensionesLista]
	Definir nFallecimiento Como Entero
	
	ACCION = ""
	Definir nIndividuos, nYear, nFechas Como Entero
	
	Mientras SALIR = Falso Hacer
		Escribir "--------------------------------------------------------------"
		Escribir "	                MEXICO A TRAVES DE LOS AÑOS					 "
		Escribir "--------------------------------------------------------------"
		Escribir "Escriba la accion que desea hacer:"
		Escribir "-AGREGAR"
		Escribir "-REGISTRO"
		Escribir "-INGRESAR"
		Escribir "-SALIR"
		Leer ACCION
		
		Segun ACCION Hacer
			"AGREGAR":
				Limpiar Pantalla
				Escribir "¿Cuantas personas deseas agregar?"
				Leer nIndividuos
				Para i = 1 Hasta nIndividuos Con Paso 1 Hacer
					Escribir "--------------------------------------------------------------"
					Escribir i " :"
					Escribir "ID"
					Leer n
					si nNombre[n] <> "" Entonces
						Limpiar Pantalla
						Escribir nNombre[n] " ya esta registrado/a"
						i = i - 1
					SiNo
						Escribir "Nombre"
						Leer nNombre[n]
						Escribir "Año de nacimiento"
						Leer nNacimientos[n]
						Si nNacimientos[n] >= 0 y nNacimientos[n] <= 1000000000 Entonces
							Escribir "Año de fallecimiento"
							Leer nFallecimiento[n]
							Si nFallecimiento[n] >= 0 y nFallecimiento[n] <= 1000000000 Entonces
								
								resta = nFallecimiento[n] - nNacimientos[n] 
								si resta < 0 Entonces
									nNombre[n] = ""
									nNacimientos[n] = 0
									nFallecimiento[n] = 0
									i = i - 1
									Limpiar Pantalla
									Escribir "La edad es negativa por favor ingrese un numero valido"
								FinSi
							SiNo
								nNombre[n] = ""
								nNacimientos[n] = 0
								nFallecimiento[n] = 0
								i = i - 1
								Limpiar Pantalla
								Escribir "Por favor ingrese un numero valido"
							FinSi
						SiNo
							nNombre[n] = ""
							nNacimientos[n] = 0
							nFallecimiento[n] = 0
							i = i - 1
							Limpiar Pantalla
							Escribir "Por favor ingrese un numero valido"
						FinSi
					FinSi
				Fin Para
				Escribir "--------------------------------------------------------------"
				Escribir "Se agregaron con exito"
				Escribir "--------------------------------------------------------------"
				Escribir "Presione Enter"
				Leer tecla
				Limpiar Pantalla	
			"REGISTRO":
				Limpiar Pantalla
				Escribir "--------------------------------------------------------------"
				Escribir "Registro:"
				Para i = 1 Hasta DimensionesLista Con Paso 1 Hacer
					si nNombre[i] <> "" Entonces
						Escribir i "| " nNombre[i] " de " nNacimientos[i] " a " nFallecimiento[i] " "
					FinSi
				Fin Para
				Escribir "--------------------------------------------------------------"
				Escribir "Presione Enter"
				Leer tecla
				Limpiar Pantalla
			"INGRESAR":
				Limpiar Pantalla
				Escribir "Ingrese el numero de fechas que desea ingresar"
				Leer nFechas
				Si nFechas > 0 y nFechas <= 100000 Entonces
					Para l = 1 Hasta nFechas Con Paso 1 Hacer
						nVivos = 0
						Limpiar Pantalla
						Escribir l "/" nFechas
						Escribir "--------------------------------------------------------------"
						Escribir "ingrese el año " l 
						Leer nYear
						Escribir "--------------------------------------------------------------"
						Para i = 1 Hasta DimensionesLista Con Paso 1 Hacer
							si nNombre[i] <> "" Entonces
								op = nYear - nNacimientos[i]
								op2 = nYear - nFallecimiento[i]
								SI op >= 0 Y op2 <= 0 Entonces
									nVivos = nVivos + 1
									Escribir nNombre[i] " " op
									//EDAD
									si nVivos == 1 Entonces
										Ma = op
										Me = op
									SiNo
										si op >= Ma Entonces
											Ma = op
										SiNo
											si op <= Me Entonces
												Me = op
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						Fin Para
						Escribir "--------------------------------------------------------------"
						Escribir "La persona mas joven tiene: " Me
						Escribir "La persona mas vieja tiene: " Ma
						Escribir "personas vivas son: " nVivos
						Escribir "--------------------------------------------------------------"
						Me = 0
						Ma = 0
						Escribir "Presione Enter"
						Leer tecla
						Limpiar Pantalla
					Fin Para
					Limpiar Pantalla
				SiNo
					Limpiar Pantalla
					Escribir "Ingrese un valor valido"
				FinSi
			"SALIR":
				Limpiar Pantalla
				SALIR = Verdadero
			De Otro Modo:
				Limpiar Pantalla
				Escribir "Por favor introduzca una accion valida "
		Fin Segun
	Fin Mientras
	
FinAlgoritmo
