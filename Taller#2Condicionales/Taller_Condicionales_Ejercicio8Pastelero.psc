Proceso Taller_Condicionales_Ejercicio8Pastelero
	Definir opcion Como Entero;
	Definir SaborDelPastel Como Caracter;
	definir PorcionesDelPastel como entero;
	Definir Decoracion Como Caracter;
	definir	VanderaDePedido Como Logico;
	Definir NumeroDePedido Como Real;
	definir	TortasDisponibles Como Real;
	//------------------
	Definir FechaDelPedido Como Caracter;
	FechaDelPedido <- '';
	SaborDelPastel<-'';
	PorcionesDelPastel<-0;
	Decoracion<-'';
	VanderaDePedido<- falso;
	NumeroDePedido<-0;
	TortasDisponibles<-20;
	//---------
	
	Definir  vanderaArreglos Como Logico;
	vanderaArreglos<-Falso;
	Definir fechaDeSalida Como Caracter;
	fechaDeSalida <- '';
	Definir novedad Como Caracter;
	Definir devolucion Como Caracter;
	Definir devolver Como Logico;
	Definir compra Como Logico;
	compra <- falso;
	Definir opcionCompra Como Entero;
	
	
	Escribir 'Taller condicionales ejercicio 8 Pastelero';
	Repetir
		Escribir 'por favor elige una opcion';
		Escribir '1 Registrar Pedido';
		Escribir '2 Tortas disponibles';
		Escribir '3 Ventas realizadas durante el dia';
		Escribir '4 Salir';
		Leer opcion;
		Segun opcion  Hacer
			1:
				Escribir 'Hola buen dia, Por favor registre su pedido';
				Escribir 'Por favor digite las caracteristicas de su pastel de acuerdo a lo siguiente';
				Escribir "Digite el sabor de su pastel";
				Leer SaborDelPastel;
				Escribir "Numero de porciones del pastel";
				Leer PorcionesDelPastel;
				Escribir"Por favor escriba la decoracion deseada";
				Leer Decoracion;
				Si SaborDelPastel<>'' Y PorcionesDelPastel<>0 y Decoracion<>'' Entonces
					VanderaDePedido <- Verdadero;
					NumeroDePedido<-NumeroDePedido+1;
					Escribir"Su pedido es el número ", NumeroDePedido, " y sus caracteristicas son: Sabor del pastel: ",SaborDelPastel,", Porciones del pastel",PorcionesDelPastel,", Decoracion :",Decoracion ;
				SiNo
					Escribir 'Por favor complete los datos de ingreso de lo contrario no sera posible tomar su pedido';
				FinSi
			2:	
				si	TortasDisponibles<>0 Entonces
					TortasDisponibles<-TortasDisponibles-NumeroDePedido;
					Escribir 'Se han vendido :',NumeroDePedido;
					Escribir 'Tortas disponibles:',TortasDisponibles;
				SiNo
					Escribir "De momento se han agotado el numero de tortas disponibles";
				FinSi
				
				
			3:
				si NumeroDePedido<>0 Entonces
					Escribir 'Se han realizado ',NumeroDePedido, " Ventas durante el transcurso del dia";
					
				SiNo
					Escribir "AÙN NO SE HAN REGISTRADO PEDIDOS";
					Escribir "Tenemos un total de : ", " ",TortasDisponibles, "	 tortas disponibles, para que tu puedas realizar tu pedido";
				FinSi
				
			De Otro Modo:
				Escribir 'Opcion no valida';
		FinSegun
	Hasta Que (opcion==4)
FinProceso
