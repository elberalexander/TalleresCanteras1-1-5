Proceso ParqueaderoElGuardian
	
	Definir PlacaDelVehiculo Como Caracter;
	Definir MarcaDelVehiculo Como Caracter;
	Definir NombreCliente Como Caracter;
	Definir TelefonoDelCliente Como Caracter;
	Definir DatosCliente_Automovil Como Caracter;
	Definir j Como Numerica;
	Definir Salir Como Logica;
	Definir AutosParqueados Como Logica;
	Definir CarrosIngresados Como Numerica;
	Definir continuar Como Logica;
	Definir Numero_Repeticiones Como Numerica;
	Definir MaximoVehiculos Como Caracter;
	Definir i Como Numerica;
	Definir N Como Numerica;
	Definir DatosCliente Como Caracter;
	Definir Esp Como Caracter;
	Definir DatosAutomovil Como Caracter;
	Definir NumeroContactosGuardar Como Numerica;
		
	Definir PosicionAutoSaliente Como Entera;
	Definir RegistrarSalida Como Logica;
	Definir opcion Como Entero;
	
	//opciones del menú
	PlacaDelVehiculo<-'';
	MarcaDelVehiculo<-'';
	NombreCliente<-'';
	TelefonoDelCliente<-"";
	
	NumeroContactosGuardar<-0;
	DatosAutomovil<-"";
	Esp<-"-";
	DatosCliente<-"";
	N<-10;
	Numero_Repeticiones<-0;
	continuar<-Verdadero;
	CarrosIngresados<-0;
	AutosParqueados<-Falso;
	Salir<-Verdadero;
	PosicionAutoSaliente<-0;
	RegistrarSalida <-Falso;
	
	
	//------------------------
	Dimension MaximoVehiculos(5);//no me permitio asignarle una variable
	
	
	
	Escribir 'Taller ciclos ejercicio 7 Parqueadero';
	Repetir
		continuar<-Verdadero;
		AutosParqueados<-Falso;
		Escribir "    ";
		Escribir '------------Por favor elige una opcion---------------';
		Escribir '1 Registrar Ingreso Vehiculo';
		Escribir '2 Consultar Vehiculos en el parqueadero';
		Escribir '3 Registrar Salida de un vehiculo';
		Escribir '4 Salir del sistema';
		Leer opcion;
							
		Segun opcion  Hacer
			1:	
				Mientras continuar==Verdadero y CarrosIngresados<5 Hacer
					Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer
						Escribir " ";
						Escribir "---Usted esta ingresando Datos del vehiculo número ",CarrosIngresados+1,"----";
						Mientras PlacaDelVehiculo=="" Hacer
							Escribir 'Por favor ingrese la placa del vehiculo';
							Leer PlacaDelVehiculo;
							PlacaDelVehiculo<-Concatenar(PlacaDelVehiculo,"-");
							//VanderaNombre<-Verdadero;					
						FinMientras
						Mientras MarcaDelVehiculo=="" Hacer
							Escribir 'Por favor ingrese Marca del vehiculo';
							Leer MarcaDelVehiculo;
							MarcaDelVehiculo<-Concatenar(MarcaDelVehiculo,"-");
						FinMientras
						Escribir "--- Usted esta ingresando Datos del propietario,del vehiculo de placa ",PlacaDelVehiculo," ---- ";
						Escribir "   ";
						Mientras NombreCliente=="" Hacer
							Escribir 'Por favor ingrese el nombre del cliente";
							Leer NombreCliente;		
							NombreCliente<-Concatenar(NombreCliente,"-");
						FinMientras
						Mientras TelefonoDelCliente=="" Hacer
							Escribir 'Por favor ingrese número telefonico del cliente";
							Leer TelefonoDelCliente;									
						FinMientras
						DatosAutomovil<-Concatenar(PlacaDelVehiculo,MarcaDelVehiculo);
						DatosCliente<-Concatenar(NombreCliente,TelefonoDelCliente);
						DatosCliente_Automovil<-Concatenar(DatosAutomovil,DatosCliente);
						MaximoVehiculos[CarrosIngresados]<-DatosCliente_Automovil; 
						PlacaDelVehiculo<-"";
						MarcaDelVehiculo<-"";
						NombreCliente<-"";
						TelefonoDelCliente<-"";
						Escribir MaximoVehiculos[CarrosIngresados];
						Escribir "Responda verdadero o falso para agregar otro contacto";
						Leer continuar;
						si continuar==Verdadero Entonces
							CarrosIngresados<-CarrosIngresados+1;
						SiNo
							continuar<-Falso;
							CarrosIngresados<-CarrosIngresados+1;
						FinSi
						
					FinPara
					
					si CarrosIngresados>=5 Entonces
						Escribir"haz completado el cupo maximo de parqueo el cual corresponde a 5 automoviles, a continuación te redirigiremos al Menú Principal";
					FinSi
				FinMientras	
				
				
				
				
									
			2:	
				si CarrosIngresados==0 Entonces
					Salir<-Falso;				
				FinSi
				si Salir==Falso Entonces
					
					Mientras Salir==Falso Hacer
						Escribir "--- El paqueadero aún no registra automoviles dentro de nuestras instalaciones ----";
						Escribir "digite ´1´ o `Verdadero` para volver al menú principal";
						Leer Salir;					
					FinMientras
				SiNo
					Mientras AutosParqueados==Falso Hacer
						Escribir "---lista de contacto----";
						Para i<-0 Hasta CarrosIngresados-1 Con Paso 1 Hacer
							Escribir "Automovil ",i+1," ",MaximoVehiculos[i];
						FinPara	
						Escribir "Digite ´1´ o `Verdadero` para volver al menú principal";
						Leer AutosParqueados;
						
					FinMientras
				FinSi
				
			3:	
					si CarrosIngresados==0 Entonces
						Salir<-Falso;				
					FinSi
					si Salir==Falso Entonces
						
						Mientras Salir==Falso Hacer
							Escribir "--- El paqueadero aún no registra automoviles dentro de nuestras instalaciones por tal motivo no puede registrar una salida ----";
							Escribir "digite ´1´ o `Verdadero` para volver al menú principal";
							Leer Salir;					
						FinMientras
					SiNo
						Mientras AutosParqueados==Falso Hacer
							Escribir "---listado de vehiculos parqueados----";
							Para i<-0 Hasta CarrosIngresados-1 Con Paso 1 Hacer
								Escribir "Vehiculo ",i+1," ",MaximoVehiculos[i];
							FinPara	
							Escribir "¿Desea registrar la salida de un vehiculo?, responda verdadero(1) o falso(0) segun sea el caso";
							Leer RegistrarSalida;
							
							si RegistrarSalida==Verdadero Entonces
								Escribir "Por favor ingrese el número que representa al vehiculo que sale de nuestras instalaciones";
								Leer PosicionAutoSaliente;
								Para j<-PosicionAutoSaliente-1 Hasta CarrosIngresados-2 Con Paso 1 Hacer
									MaximoVehiculos[j]<-MaximoVehiculos[j+1];
																		
								FinPara
								CarrosIngresados<-CarrosIngresados-1;
								
							SiNo
								Escribir "Usted esta siendo redirigido al menu principal";
								AutosParqueados<-Verdadero;
							FinSi
													
//									
							
							
						FinMientras
					FinSi
					
				
					
				
						
			4:
				Escribir"Saliendo del sistema";
										
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
				
		FinSegun
	Hasta Que (opcion==4)
	
FinProceso
