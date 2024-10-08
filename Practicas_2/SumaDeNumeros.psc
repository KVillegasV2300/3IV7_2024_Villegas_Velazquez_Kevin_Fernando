SubProceso lineas
	definir i como Entero;
	Para i = 1 Hasta 50 Con Paso 1 Hacer
		Escribir "-" sin bajar;
	Fin Para
	Escribir " "
FinSubProceso

Algoritmo SumaDeNumeros
	Definir n1, suma, nMax Como entero
	Definir dRepetir Como Caracter
	
	
	Mientras dRepetir <> "N" Hacer
		Limpiar Pantalla
		n1 = 0;
		suma = 0;
		nMax = 0;
		
		lineas;
		Escribir " 100 numeros reales con para"
		lineas;
		
		Escribir "Realiza la suma de n numeros";
		Leer nMax
		
		Para i = 1 Hasta nMax Con Paso 1 Hacer
			n1 = n1 + 1;
			suma = suma + n1;
		Fin Para
		
		Escribir "La suma es: ", suma;
		lineas;
		Escribir "¿Quieres repetir la suma? (S/N)"
		Leer dRepetir
	Fin Mientras

FinAlgoritmo
