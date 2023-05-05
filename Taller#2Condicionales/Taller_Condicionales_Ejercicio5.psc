Algoritmo Taller_Condicionales_Ejercicio5
	definir opcion Como Entero;
	definir novedad Como Caracter;
	definir devolucion Como Caracter;
	definir devolver Como Logico;
	definir compra Como Logico;
	compra<-falso;
	definir opcionCompra Como Entero;
	escribir "Taller condicionales ejercicio 5 drogueria mi salud";
	Escribir "por favor elige una opcion";
	Escribir "1 Comprar un producto";
	Escribir "2 Consultar precios por producto";
	Escribir "3 Devoluciones";
	Leer opcion;
	
	
	
	Segun  opcion Hacer
		1: Escribir "Por favor seleccione el producto a comprar";
			compra <-Verdadero;
			si compra=Verdadero Entonces
				Escribir "Por favor seleccione una opcion de nuestro listado de productos";
				Escribir "1 Analgesicos";
				Escribir "2 Antihistaminico";
				Escribir "3 Antibioticos";
				Leer opcionCompra;
				Segun opcionCompra Hacer
					1: Escribir" Haz comprado un analgesico, gracias por tu compra";
					2:Escribir"Haz comprado un Antihistaminico, gracias por tu compra";
					3:Escribir"Haz comprado un Antibioticos, gracias por tu compra";
					De Otro Modo:
					Escribir "Aùn no haz realizado tu compra";	
				FinSegun
					
			FinSi
		2: Escribir "Bienvenido aqui podras consultar precios por producto";
		3:	Escribir "Bienvenido aqui podras realizar devoluciones de tus productos adquiridos";
			Escribir "Por favor indiquenos el motivo de su devolucion para luego hacerla efectiva";
			lEER devolucion;
				devolver<-Verdadero;
				Si devolver = verdadero entonces
					escribir devolucion;
			
			FinSi
		
			
		De Otro Modo:
			Escribir "Opcion no valida";
			
	FinSegun
	
	

	
	
FinAlgoritmo
