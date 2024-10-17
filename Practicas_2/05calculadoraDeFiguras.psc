//vamos a crear un programa para calcular areas y perimetros, pero con el uso de subprocesos

//lineas
SubProceso lineas
	definir i como Entero;
	Para i = 1 Hasta 50 Con Paso 1 Hacer
		Escribir "-" sin bajar;
	Fin Para
	Escribir " "
FinSubProceso

//vamos a crear el subproceso del rectangulo
SubProceso Rectangulo (base, altura)
	Definir area, perimetro Como Real;
	area = base*altura;
	perimetro = 2*(base+altura);
	
	lineas;
	Escribir "El area del rectangulo es: ", area;
	Escribir "El perimetro del rectangulo es: ", perimetro;
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//vamos a crear el subproceso del Triangulo
SubProceso Triangulo (base, altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real;
	area = (base*altura)/2;
	perimetro = lado1+lado2+lado3;
	
	lineas;
	Escribir "El area del tringulo es: ", area;
	Escribir "El perimetro del triangulo es: ", perimetro;
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//-------------------------------------------------------------------------------
//vamos a crear el subproceso del Pentagono
SubProceso Pentagono (lado, apotema)
	Definir area, perimetro Como Real;
	perimetro = 5*lado
	area = (perimetro*apotema)/2;
	
	lineas;
	Escribir "El area del pentagono es: ", area;
	Escribir "El perimetro del pentagono es: ", perimetro;
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//vamos a crear el subproceso del rombo
SubProceso Rombo (DiagonalMayor, DiagonalMenor, lado)
	Definir area, perimetro Como Real;
	perimetro = 4*lado
	area = (DiagonalMayor*DiagonalMenor)/2;
	
	lineas;
	Escribir "El area del rombo es: ", area;
	Escribir "El perimetro del rombo es: ", perimetro;
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//vamos a crear el subproceso del hexagono
SubProceso Hexageno (lado, apotema)
	Definir area, perimetro Como Real;
	perimetro = 6*lado
	area = (perimetro*apotema)/2;
	
	lineas;
	Escribir "El area del heaxgono es: ", area;
	Escribir "El perimetro del hexagono es: ", perimetro;
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//vamos a crear el subproceso del trapecio
SubProceso Trapecio (BaseMayor, BaseMenor, altura, lado)
	Definir area, perimetro Como Real;
	perimetro = BaseMayor + BaseMenor + lado + lado;
	area = altura*(BaseMayor + BaseMenor)/2;
	
	lineas;
	Escribir "El area del trapecio es: ", area;
	Escribir "El perimetro del trapecio es: ", perimetro
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//vamos a crear el subproceso del heptagono
SubProceso Heptagono (lado, apotema)
	Definir area, perimetro Como Real;
	perimetro = 7*lado
	area = (perimetro*apotema)/2;
	
	lineas;
	Escribir "El area del heptagono es: ", area;
	Escribir "El perimetro del heptagono es: ", perimetro;
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//vamos a crear el subproceso del decagono
SubProceso Decagono (lado, apotema)
	Definir area, perimetro Como Real;
	perimetro = 10*lado
	area = (perimetro*apotema)/2;
	
	lineas;
	Escribir "El area del decagono es: ", area;
	Escribir "El perimetro del decagono es: ", perimetro;
	lineas;
	Leer tecla;
	Limpiar Pantalla
FinSubProceso

//----------------------------------------------------------------------------------
Algoritmo calculadoraDeFiguras
	Definir opcion Como Caracter;
	Definir base, altura, lado1, lado2, lado3, DiagonalMayor, DiagonalMenor, lado, apotema, BaseMayor, BaseMenor Como Real;
	
	Mientras opcion <> "S" Hacer
		
		
		//vamos a crear el menu
		lineas;
		escribir "CALCULADORA DE FIGURAS";
		lineas;
		Escribir "¿Que desea hacer?";
		Escribir "A- Area y perimetro del rectangulo";
		Escribir "B- Area y perimetro del triangulo";
		Escribir "C- Area y perimetro del rombo";
		Escribir "D- Area y perimetro del trapecio";
		Escribir "E- Area y perimetro del pentagono";
		Escribir "F- Area y perimetro del hexagono";
		Escribir "G- Area y perimetro del heptagono";
		Escribir "H- Area y perimetro del decagono";
		lineas
		Escribir "S- salir"
		Escribir " "
		
		
		Leer opcion
		
		Segun opcion hacer
				//caso 1
			caso "A":
				Limpiar Pantalla;
				Escribir "RECTANGULO";
				lineas;
				
				Escribir "Ingresa la base del rectangulo"
				Leer base;
				
				Escribir "Ingresa la base del rectangulo";
				Leer altura;
				
				Rectangulo(base, altura);
				//caso 2
			Caso "B":
				Limpiar Pantalla;
				Escribir "TRIANGULO";
				lineas;
				
				Escribir "Ingresa la base del triangulo"
				Leer base;
				
				Escribir "Ingresa la base del triangulo";
				Leer altura;
				
				Escribir "Ingrese el lado 1";
				Leer lado1;
				
				Escribir "Ingrese el lado 2";
				Leer lado2;
				
				Escribir "Ingrese el lado 3";
				Leer lado3;
				
				Triangulo(base, altura, lado1, lado2, lado3);
			caso "C":
				Limpiar Pantalla;
				Escribir "ROMBO";
				lineas;
				
				Escribir "Ingrese la digonal mayor del rombo";
				leer DiagonalMayor;
				
				Escribir "Ingrese la diagonal menor del rombo";
				Leer DiagonalMenor;
				
				Escribir "Ingrese el lado";
				Leer lado;
				
				Rombo(DiagonalMayor, DiagonalMenor, lado);
			Caso "D":
				Limpiar Pantalla;
				Escribir "TRAPECIO";
				lineas;
				
				Escribir "Ingrese la base mayor del trapecio";
				Leer BaseMayor;
				
				Escribir "Ingrese la base menor del trapecio";
				Leer BaseMenor;
				
				Escribir "Ingrese la altura del trapecio";
				Leer altura;
				
				Escribir "Ingrese el lado";
				Leer lado;
				
				Trapecio(BaseMayor, BaseMenor, altura, lado);
				
			Caso "E":
				Limpiar Pantalla;
				Escribir "PENTAGONO";
				lineas;
				
				Escribir "Ingrese el apotema";
				Leer apotema;
				Escribir "Ingrese el lado";
				Leer lado;
				
				Pentagono(lado, apotema);
			Caso "F":
				Limpiar Pantalla;
				Escribir "HEXAGONO";
				lineas;
				
				Escribir "Ingrese el apotema";
				Leer apotema;
				Escribir "Ingrese el lado";
				Leer lado;
				
				Hexageno(lado, apotema);
			Caso "G":
				Limpiar Pantalla;
				Escribir "HEPTAGONO";
				lineas;
				
				Escribir "Ingrese el apotema";
				Leer apotema;
				Escribir "Ingrese el lado";
				Leer lado;
				
				Heptagono(lado, apotema);
			Caso "H":
				Limpiar Pantalla;
				Escribir "DECAGONO";
				lineas;
				
				Escribir "Ingrese el apotema";
				Leer apotema;
				Escribir "Ingrese el lado";
				Leer lado;
				
				Decagono(lado, apotema);
			Caso "S":
				Limpiar Pantalla;
			De Otro Modo:
				Escribir "Opcion no valida";
		FinSegun
	Fin Mientras
	
	
FinAlgoritmo
