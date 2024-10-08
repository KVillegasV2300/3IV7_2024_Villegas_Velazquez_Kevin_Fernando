SubProceso lineas
	definir i como Entero;
	Para i = 1 Hasta 50 Con Paso 1 Hacer
		Escribir "-" sin bajar;
	Fin Para
	Escribir " "
FinSubProceso

Algoritmo Escritura_100_para
	definir n Como Entero
	Definir dRepetir Como Caracter
	
	//empezar algoritmo
	Mientras dRepetir <> "N" Hacer
		n = 0
		Limpiar Pantalla
		lineas;
		Escribir " 100 numeros reales con para"
		lineas;
		Leer tecla
		//sentencia para
		Para n = 1 Hasta 100 Con Paso 1 Hacer
			Escribir n
		Fin Para
		lineas
		Escribir "¿Quieres repetir el conteo? (S/N)"
		Leer dRepetir
	Fin Mientras
	
FinAlgoritmo
