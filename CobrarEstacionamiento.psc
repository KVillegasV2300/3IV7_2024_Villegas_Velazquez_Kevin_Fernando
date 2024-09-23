Algoritmo CobrarEstacionamiento
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
	
	//evaluar casos
	//si los minutos de salida son menores a las de salida
	
	Si totalMinutos < 0 Entonces
		totalMinutos =+ 60
		totalHoras =- 1
	Fin Si
	
	//convertir todo a minutos
	totalMinutos = (totalHoras*60) + totalMinutos
	
	//vamos a calcula el cobro
	TotalCobro = 0
	
	//calcular el cobro por la hora completa
	
	Si totalMinutos >= 60 Entonces
		TotalCobro = TotalCobro + (totalMinutos/60)*15
	Fin Si
	
	//calcular el cobro de cada fraccion
	minutoRestante = totalMinutos%60
	
	Si minutoRestante > 0 Entonces
		fracciones15min = minutoRestante //aqui se obtienen os 15
		//cobrar cada fraccion
		TotalCobro = TotalCobro + fracciones15min * 6
	Fin Si
	
	//mostarar la salida
	Escribir "total minutos " totalMinutos " total horas " totalHoras
	Escribir "el total a pagar es de: ", TotalCobro, " pesos"
	
	
FinAlgoritmo
