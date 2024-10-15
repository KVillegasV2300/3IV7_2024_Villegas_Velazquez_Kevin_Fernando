SubProceso lineas
	definir i como Entero;
	Para i = 1 Hasta 50 Con Paso 1 Hacer
		Escribir "-" sin bajar;
	Fin Para
	Escribir " "
FinSubProceso

Algoritmo Transformarapulgadas
	definir num1, nuevoValor Como Real
	Definir salir Como Logico
	
	
	salir = falso
	d = 0 
	
	Mientras salir <> Verdadero Hacer
		lineas;
		Escribir "Conversion";
		lineas
		Escribir "Ingrese el numero que desea convertir (pies)"
		leer num1
		Limpiar Pantalla
		Escribir "¿En que formato lo desea?"
		Escribir "1- Pulgadas"
		Escribir "2- Yardas"
		Escribir "3- centimetros"
		Escribir "4- metros"
		lineas
		Escribir "5- Salir"
		lineas
		Leer d
		
		Segun d Hacer
			1:
				Limpiar Pantalla
				nuevoValor = num1 * 12
				lineas
				Escribir "el valor en Pulgadas es: " nuevoValor
				lineas
				Leer tecla
				Limpiar Pantalla
			2:
				Limpiar Pantalla
				nuevoValor = num1 * 0.333333
				lineas
				Escribir "el valor en Pulgadas es: " nuevoValor
				lineas
				Leer tecla
				Limpiar Pantalla
			3:
				Limpiar Pantalla
				nuevoValor = num1 * 30.48
				lineas
				Escribir "el valor en Pulgadas es: " nuevoValor
				lineas
				Leer tecla
				Limpiar Pantalla
			4:
				Limpiar Pantalla
				nuevoValor = num1 * 0.3048
				lineas
				Escribir "el valor en Pulgadas es: " nuevoValor
				lineas
				Leer tecla
				Limpiar Pantalla
			5:
				salir = Verdadero
			De Otro Modo:
				Limpiar Pantalla
				Escribir "Ingrese una accion valida"
		Fin Segun
	Fin Mientras
FinAlgoritmo


