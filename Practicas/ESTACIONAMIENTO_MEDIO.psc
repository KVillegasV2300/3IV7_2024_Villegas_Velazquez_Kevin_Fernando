Algoritmo sin_titulo
	//Definir 
	Definir horaEntrada, minutoEntrada, horaSalida, minutoSalida Como Real
	Definir totalHoras, totalMinutos, minutosTotalesDeLaCuenta Como Real
	Definir TotalCobro Como Real
	
	//estrada de datos
	Escribir "Ingrese la hora de entrada (formato 24 horas)"
	leer horaEntrada
	Escribir "Ingrese los minutos de entrada (formato de 0-59)"
	leer minutoEntrada
	
	Escribir "Ingrese la hora de salida (formato 24 horas)"
	leer horaSalida
	Escribir "Ingrese los minutos de salida (formato de 0-59)"
	leer minutoSalida
	
	//Proceso 
	//calcular el tiempo total en minutos
	
	totalHoras = horaSalida - horaEntrada
	totalMinutos = minutoSalida - minutoEntrada
	
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
	Escribir "total minutos " totalMinutos " total horas " totalHoras
	Escribir "el total a pagar es de: ", TotalCobro, " pesos"
	
FinAlgoritmo