SubProceso lineas
	definir i como Entero;
	Para i = 1 Hasta 50 Con Paso 1 Hacer
		Escribir "-" sin bajar;
	Fin Para
	Escribir " "
FinSubProceso

Algoritmo temperaturas
	definir d, d2, d3, resultado, num Como Real
	Definir salir Como Logico
	
	
	salir = falso
	d = 0 
	
	
	salir = falso
	d = 0
	
	Mientras salir <> Verdadero Hacer
		Limpiar Pantalla
		lineas;
		Escribir "Conversion de temperaturas";
		lineas
		Escribir "¿Que desea hacer?"
		Escribir "1. Convertir"
		Escribir "2. Salir"
		Leer d
		Segun d Hacer
			1:
				Limpiar Pantalla
				Escribir "¿Que unidad de medida desea?"
				Escribir "1.FAHRENHEIT"
				Escribir "2.CELSIUS"
				Escribir "3.KELVINE"
				Escribir "4.RANKINE"
				Leer d1
				
				Segun d1 Hacer
					1:
						Limpiar Pantalla
						Escribir "FAHRENHEIT"
						lineas
						
						Escribir "¿Que unidad deseas transformar?"
						Escribir "1.CELSIUS"
						Escribir "2.KELVINE"
						Escribir "3.RANKINE"
						leer d
						
						Segun d Hacer
							1:
								Limpiar Pantalla
								Escribir "F A C"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = (num -32)/1.8
								Escribir resultado " CELSIUS"
								Leer tecla
								lineas
							2:
								Limpiar Pantalla
								Escribir "F A K"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = (num-32)*5/9 + 273.15
								Escribir resultado " KELVINE"
								Leer tecla
								lineas
							3:
								Limpiar Pantalla
								Escribir "F A R"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = num + 459.67
								Escribir resultado, " RANKIE"
								Leer tecla
								lineas
							De Otro Modo:
								Limpiar Pantalla
								Escribir "Ingresde una accion valida"
						Fin Segun
						
					2:
						Limpiar Pantalla
						Escribir "CELCIUS"
						lineas
						
						Escribir "¿Que unidad deseas transformar?"
						Escribir "1.FAHRENHEIT"
						Escribir "2.KELVINE"
						Escribir "3.RANKINE"
						
						leer d
						
						Segun d Hacer
							1:
								Limpiar Pantalla
								Escribir "C A F"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = (1.8*num) + 32
								Escribir resultado " FAHRENHEIT"
								Leer tecla
								lineas
							2:
								Limpiar Pantalla
								Escribir "C A K"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = num + 273.15
								Escribir resultado " KELVINE"
								Leer tecla
								lineas
							3:
								Limpiar Pantalla
								Escribir "C A R"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = (1.8* num) + 491.67
								Escribir resultado " RANKINE"
								Leer tecla
								lineas
							De Otro Modo:
								Limpiar Pantalla
								Escribir "Ingresde una accion valida"
						Fin Segun
					3:
						Limpiar Pantalla
						Escribir "KELVINE"
						lineas
						Escribir "¿Que unidad deseas transformar?"
						Escribir "1.RANKINE"
						Escribir "2.CELSIUS"
						Escribir "3.FAHRENHEIT"
						
						leer d
						
						Segun d Hacer
							1:
								Limpiar Pantalla
								Escribir "K A R"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = num * 1.8
								Escribir resultado " RANKINE"
								Leer tecla
								lineas
							2:
								Limpiar Pantalla
								Escribir "K A C"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = num-273.15
								Escribir resultado " CELSIUS"
								Leer tecla
								lineas
							3:
								Limpiar Pantalla
								Escribir "K A F"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = ((num-273.15)*1.8)+32
								Escribir resultado " FAHRENHEIT"
								Leer tecla
								lineas
							De Otro Modo:
								Limpiar Pantalla
								Escribir "Ingresde una accion valida"
						Fin Segun
					4:
						Limpiar Pantalla
						Escribir "RANKINE"
						lineas
						Escribir "¿Que unidad deseas transformar?"
						Escribir "1.CELSIUS"
						Escribir "2.FAHRENHEIT"
						Escribir "3.KELVINE"
						
						leer d
						
						Segun d Hacer
							1:
								Limpiar Pantalla
								Escribir "R A C"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = (num - 491.67) * (5/9)
								Escribir resultado " CELSIUS"
								Leer tecla
								lineas
							2:
								Limpiar Pantalla
								Escribir "R A F"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = num - 459.67
								Escribir resultado " FAHRENHEIT"
								Leer tecla
								lineas
							3:
								Limpiar Pantalla
								Escribir "R A K"
								lineas
								Escribir "Ingrese la unidad"
								Leer num
								lineas
								resultado = (5/9)*num
								Escribir resultado " FAHRENHEIT"
								Leer tecla
								lineas
							De Otro Modo:
								Limpiar Pantalla
								Escribir "Ingresde una accion valida"
						Fin Segun
				    5:
					De Otro Modo:
						Limpiar Pantalla
						Escribir "Ingrese una accion valida"
				Fin Segun
			2:
				salir = Verdadero
			De Otro Modo:
				Escribir "Ingrese una accion valida"
		Fin Segun
		
	Fin Mientras
	
	
FinAlgoritmo