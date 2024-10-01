Algoritmo RESERVACIONES
	NPRODUCTOS = 0
	
	Dimension HABITACIONES[100]
	Definir HABITACIONES Como Caracter
	Dimension DIAI[100]
	Definir DIAI Como Real
	Dimension MESI[100]
	Definir MESI Como Real
	Dimension AÑOI[100]
	Definir AÑOI Como Real
	
	Dimension DIAF[100]
	Definir DIAF Como Real
	Dimension MESF[100]
	Definir MESF Como Real
	Dimension AÑOF[100]
	Definir AÑOF Como Real
	
	Definir nHabitacionesO, nHabitacionesL, nHabitacionesG Como Entero
	Definir DIAT, MEST, AÑOT Como Entero
	//HABITACIONES POR DEFAULT
	
	HABITACIONES[1] = "DISPONIBLE"
	HABITACIONES[2] = "DISPONIBLE"
	HABITACIONES[3] = "DISPONIBLE"
	HABITACIONES[4] = "DISPONIBLE"
	HABITACIONES[5] = "DISPONIBLE"
	HABITACIONES[6] = "DISPONIBLE"
	
	ACCION = " "
	Definir d Como Caracter
	
	Mientras APAGADO = Falso Hacer
		Escribir "--------------------------------------------------------------"
		Escribir "	                    GESTION DE HABITACIONES					 "
		Escribir "--------------------------------------------------------------"
		Escribir "Escriba la accion que desea hacer:"
		Escribir "-RESERVAR"
		Escribir "-CANCELAR"
		Escribir "-CONSULTAR"
		Escribir "-SALIR"
		leer ACCION
		
		Segun ACCION Hacer
			"RESERVAR":
				Limpiar Pantalla
				Escribir "--------------------------------------------------------------"
				Escribir "Habitaciones disponibles"
				Escribir "--------------------------------------------------------------"
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					si HABITACIONES[i] = "DISPONIBLE" Entonces
						Escribir "HABITACION " i "| " HABITACIONES[i]
						nHabitacionesD = nHabitacionesD + 1
					FinSi
				Fin Para
				si nHabitacionesD <> 0 Entonces
					Escribir "--------------------------------------------------------------"
					Escribir "¿Que habitacion desea reservar?"
					Leer n
					Mientras HABITACIONES[n] <> "OCUPADO" Hacer
						Limpiar Pantalla
						Escribir "Habitacion " n
						Escribir "INGRESE EL DIA DE ENTRADA"
						Leer DIAI[n]
						Si DIAI[n] > 0 y DIAI[n] <= 30 Entonces
							Escribir "INGRESE EL MES DE ENTRADA"
							leer MESI[n]
							Si MESI[n] > 0 y MESI[n] <= 12 Entonces
								Escribir "INGRESE EL AÑO DE ENTRADA"
								leer AÑOI[n]
								Si AÑOI[n] > 0 Entonces
									Escribir "INGRESE EL DIA DE SALIDA"
									Leer DIAF[n]
									Si DIAF[n] > 0 y DIAF[n] <= 30 Entonces
										Escribir "INGRESE EL MES DE SALIDA"
										leer MESF[n]
										Si MESF[n] > 0 y MESF[n] <= 12 Entonces
											Escribir "INGRESE EL AÑO DE SALIDA"
											leer AÑOF[n]
											Si AÑOF[n] > 0 Entonces
												//RESTA DE FECHAS
												AÑOT = AÑOF[n] - AÑOI[n]
												si AÑOT >= 0 Entonces
													Escribir "--------------------------------------------------------------"
													Escribir "Asignado con exito"
													Escribir "--------------------------------------------------------------"
													HABITACIONES[n] = "OCUPADO"
													Leer tecla
													Limpiar Pantalla
												SiNo
													Escribir "--------------------------------------------------------------"
													Escribir "A surgido un error, vuelva a intentarlo"
													Escribir "--------------------------------------------------------------"
													Leer tecla
													Limpiar Pantalla
												FinSi	
											FinSi	
										FinSi	
									FinSi
								FinSi	
							FinSi	
						FinSi
					Fin Mientras
				SiNo
					Escribir "--------------------------------------------------------------"
					Escribir "Todo ocupado, lo sentimos"
					Leer tecla
					Limpiar Pantalla
				FinSi
				
			"CANCELAR":
				Limpiar Pantalla
				Escribir "--------------------------------------------------------------"
				Escribir "¿Que habitacion desea cancelar?"
				Escribir "--------------------------------------------------------------"
				
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					si HABITACIONES[i] = "OCUPADO" Entonces
						//Escribir "HABITACION " i "| " HABITACIONES[i]
						Escribir "HABITACION " i "| " DIAI[i] "/" MESI[i] "/" AÑOI[i] " Hasta "  DIAF[i] "/" MESF[i] "/" AÑOF[i]
						nHabitacionesO = nHabitacionesO + 1
					FinSi
				Fin Para
				si nHabitacionesO <> 0 Entonces
					Leer n
					HABITACIONES[n] = "DISPONIBLE"
					DIAI[n] = 0
					DIAF[n] = 0
					MESI[n] = 0
					MESF[n] = 0
					AÑOI[n] = 0
					AÑOF[n] = 0
					
					Escribir "--------------------------------------------------------------"
					Escribir "Se cancelo con exito"
					Escribir "--------------------------------------------------------------"
					Escribir "Presione Enter"
					Leer tecla
					Limpiar Pantalla	
				SiNo
					Escribir "No hay reservaciones"
					Escribir "--------------------------------------------------------------"
					Escribir "Presione Enter"
					Leer tecla
					Limpiar Pantalla
				FinSi
				
			"CONSULTAR":
				Limpiar Pantalla
				Escribir "--------------------------------------------------------------"
				Escribir "Habitaciones"
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					si HABITACIONES[i] = "DISPONIBLE" o HABITACIONES[i] = "OCUPADO" Entonces
						//Escribir "HABITACION " i "| " HABITACIONES[i]
						Escribir "HABITACION " i "| " HABITACIONES[i] " | " DIAI[i] "/" MESI[i] "/" AÑOI[i] " Hasta "  DIAF[i] "/" MESF[i] "/" AÑOF[i]
					FinSi
				Fin Para
				Escribir "--------------------------------------------------------------"
				Escribir "Presione Enter"
				Leer tecla
				Limpiar Pantalla
			"SALIR":
				APAGADO = Verdadero
			De Otro Modo:
				Limpiar Pantalla
				Escribir "Por favor introduzca una accion valida "
		Fin Segun
		
	Fin Mientras
	
	
	//Escribir "El producto " n " es " ID[n] " con " CANTIDAD[n] " unidades en inventario y con un precio de " PRECIO[n] " PESOS"
FinAlgoritmo
