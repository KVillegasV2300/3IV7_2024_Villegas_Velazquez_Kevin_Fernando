Algoritmo Calificaciones
	calificacion = 0;
	Escribir "Ingrese la calificacion a asignar"
	Leer calificacion
	
	si calificacion <= 0 o calificacion >= 21 Entonces
		Escribir "Fuera de rango"
	SiNo
		Si calificacion >= 19 y calificacion <= 20 Entonces
			Escribir "A"
		SiNo 
			Si calificacion >= 16 y calificacion <= 18 Entonces
				Escribir "B"
			SiNo
				Si calificacion >= 13 y calificacion <= 15 Entonces
					Escribir  "C"
				SiNo
					Si  calificacion >= 10 y calificacion <= 11 Entonces
						Escribir "D"
					SiNo
						Escribir  "E"
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	FinSi
	
FinAlgoritmo
