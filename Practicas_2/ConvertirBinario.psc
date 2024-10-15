Algoritmo ConvertirBinario
	definir num, residuo, division Como real
	Definir binario como texto
	
	Leer num
	//el binario lo tengo que concatenar
	binario = ""
	
	si num >= 0 Entonces
		mientras num > 0 Hacer
			residuo = num%2
			division = num/2
			//tengo que ir armando el binario
			binario = ConvertirATexto(residuo) + binario
			num = TRUNC(division)
		FinMientras
		Escribir "El numero binario es " binario
		
		si binario = " " Entonces
			binario = "0"
			Escribir "El numero binario es " binario
		FinSi
	FinSi
	
	
FinAlgoritmo
