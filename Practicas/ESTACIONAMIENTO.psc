Algoritmo Estacionamiento
	//Definir 
	Definir horaEntrada, minutoEntrada, segundoEntrada, horaSalida, minutoSalida, segundoSalida Como Real
	Definir totalHoras, totalMinutos, minutosTotalesDeLaCuenta, totalSegundos Como Real
	Definir TotalCobro Como Real
	COBRO = falso
	
	Mientras COBRO = falso Hacer
		Limpiar Pantalla
		Escribir "--------------------------------------------------------------"
		Escribir "	                COBRO ESTACIONAMIENTO					 "
		Escribir "--------------------------------------------------------------"
		//estrada de datoS
		Escribir "Ingrese la hora de entrada (formato 24 horas)"
		leer horaEntrada
		Si horaEntrada >= 0 y horaEntrada <= 24 Entonces
			Escribir "Ingrese los minutos de entrada (formato de 0-59)"
			leer minutoEntrada
			Si minutoEntrada >= 0 y minutoEntrada <= 59 Entonces
				Escribir "Ingrese los segundos de entrada (formato 0-59)"
				Leer segundoEntrada
				Si segundoEntrada >= 0 y segundoEntrada <= 59 Entonces
					Escribir "Ingrese la hora de salida (formato 24 horas)"
					leer horaSalida
					Si horaSalida >= 0 y horaSalida <= 24 Entonces
						Escribir "Ingrese los minutos de salida (formato de 0-59)"
						leer minutoSalida
						Si minutoSalida >= 0 y minutoSalida <= 59 Entonces
							Escribir "Ingrese los segundos de salida (formato de 0-59)"
							leer segundosSalida
							Si segundosSalida >= 0 y segundosSalida <= 59 Entonces
								//Proceso 
								//calcular el tiempo total en minutos
								
								totalHoras = horaSalida - horaEntrada
								totalMinutos = minutoSalida - minutoEntrada
								totalSegundos = segundosSalida - segundoEntrada
								
								
								si totalHoras >= 0 Entonces
									si totalSegundos < 0 Entonces
										totalSegundos = totalSegundos + 60
										totalMinutos = TotalMinutos - 1
									FinSi
									
									Si totalMinutos < 0 Entonces
										totalMinutos = totalMinutos + 60
										totalHoras = totalHoras - 1
									Fin Si
									
									//cobro en horas
									
									Si totalHoras >= 1 Entonces
										TotalCobro = TotalCobro + (totalHoras)*15
									Fin Si
									
									//calcular el cobro de cada fraccion
									minutosTotalesDeLaCuenta = (totalHoras*60) + totalMinutos
									minutoRestante = minutosTotalesDeLaCuenta%60
									
									Si minutoRestante > 0 Entonces
										fracciones15min = minutoRestante //aqui se obtienen os 15
										//cobrar cada fraccion
										TotalCobro = TotalCobro + (fracciones15min * 6)/15
									Fin Si
									
									//mostarar la salida
									Escribir "Total horas " totalHoras " Total minutos " totalMinutos  " Total segundos " totalSegundos
									Escribir "el total a pagar es de: ", TotalCobro, " pesos"	
									COBRO = Verdadero
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
	Fin Mientras
	
FinAlgoritmo
