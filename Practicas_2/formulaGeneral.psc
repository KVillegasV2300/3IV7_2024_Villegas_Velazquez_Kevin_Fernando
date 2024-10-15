SubProceso lineas
	definir i como Entero;
	Para i = 1 Hasta 50 Con Paso 1 Hacer
		Escribir "-" sin bajar;
	Fin Para
	Escribir " "
FinSubProceso

Algoritmo ecuacion
	definir a, b, c, R1, R2, d, determ Como Real
	Definir salir Como Logico
	
	
	salir = falso
	d = 0 
	
	Mientras salir <> Verdadero Hacer
		lineas;
		Escribir "Conversion";
		lineas
		Escribir "¿Que desea hacer?"
		Escribir "1. resolver"
		Escribir "2. salir"
		Leer d
		Segun d Hacer
			1:
				Limpiar Pantalla
				Escribir "Ingrese los valores de a, b, c"
				Leer a, b, c
				determ = b^2 -4*a*c
				
				si determ > 0 Entonces
					R1 =  (- b + RAIZ(b^2 -(4*a*c)))/2*a
					R2 =  (- b - RAIZ(b^2 -(4*a*c)))/2*a
					lineas
					Escribir R1
					Escribir R2
					lineas
					Leer tecla
					Limpiar Pantalla
				SiNo
					lineas
					Escribir "Es imaginario"
					lineas
					Leer tecla
					Limpiar Pantalla
				FinSi
				
			2:
				salir = Verdadero
			De Otro Modo:
				Limpiar Pantalla
				Escribir "Ingrese una accion valida"
		Fin Segun
		
	Fin Mientras
	
	
FinAlgoritmo
