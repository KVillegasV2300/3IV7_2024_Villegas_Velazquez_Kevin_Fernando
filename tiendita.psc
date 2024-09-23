Algoritmo tiendita
	
	Definir producto Como Caracter
	Definir codigoproducto, cantidad Como Entero
	Definir precio como real
	
	
	//tengo que crear un menu de seleccion
	Mientras Op <> "SALIR" Hacer
		Escribir "1- Imngresar un nuevo producto"
		Escribir "2- Actualiza un producto"
		Escribir "3- Consulta el inventario"
		Escribir "4- Generar un reporte"
		Escribir "5- Salir"
		Leer Op
		Segun Op Hacer
			1:
				Escribir "Ingresa el nombre del produto"
				leer producto
				Escribir "Ingresa el codigo del producto"
				leer codigoproducto
				Escribir "Ingresa la cantidad"
				leer cantidad
				Escribir "Ingresa el precio"
				leer precio
			2:
				Escribir "Ingresa el codigo del producto a actualizar"
				Leer codigoproducto
				Escribir "Ingresa la nueva cantidad"
				leer cantidad
			3:
				Escribir "Consultar inventario"
				Escribir "Nombre del producto ", producto 
				Escribir "codigo del producto ", codigoproducto 
				Escribir "precio del producto ", precio 
				Escribir "Cantidad del producto ", cantidad
			4:	
				
			5:
			De Otro Modo:
				secuencia_de_acciones_dom
		Fin Segun
		
	Fin Mientras
	
FinAlgoritmo
