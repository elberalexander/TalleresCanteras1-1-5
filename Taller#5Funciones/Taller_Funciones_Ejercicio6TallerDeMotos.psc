SubProceso menuPrincipal()
	Escribir 'Taller condicionales ejercicio 6 Taller de Motos';
	Escribir 'por favor elige una opcion';
	Escribir '1 Registrar ingreso de la motocicleta';
	Escribir '2 Arreglos realizados por el mecanico';
	Escribir '3 Registro de salida del taller';
	Escribir '4 Salir';
FinSubProceso
SubProceso ResumenServicio(fechaDeSalida,FechaDeIngreso,observacionesDelCliente,novedadesEncontradasPorElMecanico,respuestosQueFueronCambiados,arreglosRealizados,fechaDeSalida)
	Escribir 'REGISTRO DE SALIDA DE LA MOTOCICLETA';
	Escribir 'Por favor ingrese la fecha de salida de la motocicleta';
	Leer fechaDeSalida;
	Escribir 'RESUMEN DEL SERVICIO PRESTADO';
	Escribir "FechaDeIngreso","=",FechaDeIngreso;
	Escribir "observacionesDelCliente =",observacionesDelCliente;
	Escribir "novedadesEncontradasPorElMecanico =",novedadesEncontradasPorElMecanico;
	Escribir "respuestosQueFueronCambiados =",respuestosQueFueronCambiados;
	Escribir "arreglosRealizados =",arreglosRealizados;
	Escribir "fechaDeSalida =",fechaDeSalida;
	
FinSubProceso

Proceso Taller_Funciones_Ejercicio6TallerDeMotos
	Definir opcion Como Entero;
	Definir FechaDeIngreso Como Caracter;
	FechaDeIngreso <- '';
	Definir observacionesDelCliente Como Caracter;
	observacionesDelCliente <- '';
	Definir novedadesEncontradasPorElMecanico Como Caracter;
	novedadesEncontradasPorElMecanico <- '';
	Definir respuestosQueFueronCambiados Como Caracter;
	respuestosQueFueronCambiados <- '';
	Definir arreglosRealizados Como Caracter;
	arreglosRealizados <- '';
	Definir vanderaDeIngreso Como Logico;
	vanderaDeIngreso <- falso;
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
	
	Repetir
		menuPrincipal();
		Leer opcion;
		Segun opcion  Hacer
			1:
				Escribir "       ";
				Escribir 'Por favor realize el registro de su motocicleta';
				Escribir 'Ingrese fecha de entrada del vehiculo';
				Leer FechaDeIngreso;
				Escribir 'Ingrese las observaciones realizadas por parte del cliente';
				Leer observacionesDelCliente;
				Si FechaDeIngreso<>'' Y observacionesDelCliente<>'' Entonces
					vanderaDeIngreso <- Verdadero;
				SiNo
					Escribir 'Por favor complete los datos de ingreso';
				FinSi
			2:	
				si	vanderaDeIngreso==Verdadero Entonces
					Escribir 'POR FAVOR REGISTRE LAS NOVEDADES ENCONTRADAS Y ARREGLOS REALIZADOS A LA MOTOCICLETA';
					Escribir 'por favor ingrese las novedaes encontradas por el mecanico';
					Leer novedadesEncontradasPorElMecanico;
					Escribir 'Por favor ingrese los arreglos que fueron realizados';
					Leer arreglosRealizados;
					Escribir 'Ingrese listado de respuestos que fueron cambiados';
					Leer respuestosQueFueronCambiados;
					si novedadesEncontradasPorElMecanico<>""y arreglosRealizados<>"" y respuestosQueFueronCambiados<>"" Entonces
						vanderaArreglos<-Verdadero;									
					FinSi
				SiNo 
					Escribir "RECUERDA QUE PRIMERO DEBES REGISTRAR LA MOTOCICLETA";
				FinSi
				
				
			3:
				si vanderaArreglos==verdadero Entonces
					ResumenServicio(fechaDeSalida,FechaDeIngreso,observacionesDelCliente,novedadesEncontradasPorElMecanico,respuestosQueFueronCambiados,arreglosRealizados,fechaDeSalida);
				SiNo
					Escribir "AÙN NO HAZ REGISTRADO LAS NOVEDADES ENCONTRADAS Y ARREGLOS REALIZADOS A LA MOTOCICLETA";
					Escribir" ";
				FinSi
			4: 
				Escribir "Saliendo del sistema";
			De Otro Modo:
				Escribir 'Opcion no valida';
		FinSegun
		
	Hasta Que (opcion==4)
FinProceso
