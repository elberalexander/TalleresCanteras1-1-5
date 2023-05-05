subproceso	devolver<-devoluciones(devolucion)
	Definir devolver Como Logico;
	Si devolucion <> "" entonces
		escribir "El producto presenta el siguiente aspecto: ",devolucion;
		devolver<-Falso;
	FinSi	
FinSubProceso
SubProceso menuPrincipal
	Escribir "    ";
	Escribir "por favor elige una opcion";
	Escribir "1 Comprar un producto";
	Escribir "2 Consultar precios por producto";
	Escribir "3 Devoluciones";
	Escribir "4 Salir";
FinSubProceso
SubProceso menuMedicamentos
	Escribir "Por favor seleccione una opcion de nuestro listado de productos";
	Escribir " ";
	Escribir "1 Analgesicos";
	Escribir "2 Antihistaminico";
	Escribir "3 Antibioticos";
FinSubProceso

Algoritmo Taller_Condicionales_Ejercicio5
	Definir Ciclo Como Logica;
	definir opcion Como Entero;
	definir novedad Como Caracter;
	definir devolucion Como Caracter;
	definir devolver Como Logico;
	definir compra Como Logico;
	compra<-Verdadero;
	devolver<-Verdadero;
	devolucion<-"";
	Ciclo<-Verdadero;
	definir opcionCompra Como Entero;
	escribir "Taller condicionales ejercicio 5 drogueria mi salud";	
	Repetir
		menuPrincipal();
		Leer opcion;
		compra<-Verdadero;
		Segun  opcion Hacer
			1: Escribir "Por favor seleccione el producto a comprar";
				menuMedicamentos();
				si compra==Verdadero Entonces					
					Leer opcionCompra;
					Segun opcionCompra Hacer
						1: Escribir" Haz comprado un analgesico, gracias por tu compra";
						2:Escribir"Haz comprado un Antihistaminico, gracias por tu compra";
						3:Escribir"Haz comprado un Antibioticos, gracias por tu compra";
						De Otro Modo:
							Escribir "Aùn no haz realizado tu compra";	
					FinSegun
					compra<-Falso;
				FinSi
			2: Escribir "Bienvenido aqui podras consultar precios por producto";
			3:	repetir
					Escribir "Bienvenido aqui podras realizar devoluciones de tus productos adquiridos";
					Escribir "Por favor indiquenos el motivo de su devolucion para luego hacerla efectiva";
					lEER devolucion;
					devolver<-devoluciones(devolucion);
					
				Hasta Que 	devolver==Falso;
			4: 
				Ciclo<-Falso;
				Escribir "Saliendo del sistema";
				
			De Otro Modo:
				Escribir "Opcion no valida";
				
		FinSegun	
	Hasta Que Ciclo==Falso
		
FinAlgoritmo
