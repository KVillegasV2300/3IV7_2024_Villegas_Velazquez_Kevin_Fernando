Algoritmo SumaDeNumeros
	Definir n1, suma, nMax Como Entero;
	n1 = 0;
	suma = 0;
	nMax = 0;
	
	Escribir "Realiza la suma de n numeros";
	Leer nMax
	
	Para i = 1 Hasta nMax Con Paso 1 Hacer
		n1 = n1 + 1;
		suma = suma + n1;
	Fin Para
	
	Escribir "La suma es: ", suma;
FinAlgoritmo
