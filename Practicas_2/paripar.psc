Algoritmo paripar
	Escribir "Diseñar un algoritmo para deterinar si un numero es par o inpar"
	Definir n1, modulo , modulo2, modulo3, division Como Entero
	Definir s, j como entero
	
	Escribir "Ingresar un numero entero"
	Leer  n1
	
	modulo = n1%2

	
	Si modulo <> 0 Entonces
		Escribir "Numero impar"
		Para i = 2 Hasta n1 Con Paso 1 Hacer
			si i <> n1 Entonces
				modulo2 = n1%i
				si modulo2 = 0 Entonces
					Escribir "Numero no primo"
					i = n1
				FinSi
			SiNo
				i = n1
				Escribir "Numero primo"
			FinSi
		Fin Para
		
	sino
		Escribir "Numero par"
		Escribir "Numero con primo"
	FinSi
	
	
FinAlgoritmo
