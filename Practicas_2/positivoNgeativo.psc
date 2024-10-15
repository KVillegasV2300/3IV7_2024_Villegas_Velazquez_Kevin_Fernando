SubProceso lineas
	definir i como Entero;
	Para i = 1 Hasta 50 Con Paso 1 Hacer
		Escribir "-" sin bajar;
	Fin Para
	Escribir " "
FinSubProceso

Algoritmo positivoNgeativo
	definir d, nmax, positivos, negativos, num Como Real
	Definir salir Como Logico
	
	
	salir = falso
	d = 0 
	
	Mientras salir <> Verdadero Hacer
		lineas;
		Escribir "Conversion";
		lineas
		Escribir "¿Que desea hacer?"
		Escribir "1. Ingresar numeros"
		Escribir "2. salir"
		Leer d
		Segun d Hacer
			1:
				Limpiar Pantalla
				Escribir "Tamaño de la serie"
				leer nmax
				Para i = 1 Hasta nmax Con Paso 1 Hacer
					Limpiar Pantalla
					Escribir i, " / ", nmax
					lineas
					Escribir "Ingresa el numero ", i
					Leer num
					
					Si num > 0 Entonces
						positivos = positivos + 1
					SiNo
						si num < 0 Entonces
							negativos = negativos + 1
						FinSi
					Fin Si
				Fin Para
				lineas
				Escribir "numero de positivos es: " positivos
				Escribir "numero de negativos es: " negativos
				lineas
				Leer tecla
				Limpiar Pantalla
			2:
				salir = Verdadero
			De Otro Modo:
				Limpiar Pantalla
				Escribir "Ingrese una accion valida"
		Fin Segun
		
	Fin Mientras
	
	
FinAlgoritmo

