SubProceso menuPrincipal()
	Escribir "    ";
	Escribir '------------Por favor elige una opcion---------------';
	Escribir '1 Añadir Contactos';
	Escribir '2 Buscar Contactos';
	Escribir '3 Eliminar Contactos';
	Escribir '4 Salir del sistema';
FinSubProceso
SubProceso  Salir1<-SinContactosREgistrados(Salir)	
	Definir Salir1 Como Logico;
	Salir1<-Falso;
	Mientras Salir1==Falso Hacer
		Escribir "---Aún no tienes contactos registrados----";
		Escribir "digite ´1´ o `Verdadero` para salir";
		Leer Salir1;		
	FinMientras	
FinSubProceso
SubProceso contactoCom<-AgregarDatosDeUnContacto(ContactosIngresados)
	Definir contactoCom,NombreCompleto,ContactoTelefono,ContactoOrganizacion,FullContacto Como Caracter;
	NombreCompleto<-"";
	ContactoTelefono<-"";
	ContactoOrganizacion<-"";
		Escribir " ";
		Escribir "---Usted esta ingresando Datos del contacto número ",ContactosIngresados+1,"----";
		Mientras NombreCompleto=="" Hacer
			Escribir 'Por favor ingrese nombre completo del contacto agregar';
			Leer NombreCompleto;
			//VanderaNombre<-Verdadero;					
		FinMientras
		Mientras ContactoTelefono=="" Hacer
			Escribir 'Por favor ingrese número telefonico";
			Leer ContactoTelefono;									
		FinMientras
		Mientras ContactoOrganizacion=="" Hacer
			Escribir 'Por favor ingresa la organizacion";
			Leer ContactoOrganizacion;						
		FinMientras
		FullContacto<-Concatenar(NombreCompleto,ContactoTelefono);
		contactoCom<-Concatenar(FullContacto,ContactoOrganizacion);
FinSubProceso
SubProceso VisualizarContactos(Contactos1,ContactosIngresados)
	definir i Como Entero;
	Escribir "---lista de contactos----";
	Para i<-0 Hasta ContactosIngresados-1 Con Paso 1 Hacer
		Escribir "contacto ",i+1," ",Contactos1[i];
	FinPara	
FinSubProceso

Proceso ContactosTelefonicos
	Definir j Como Numerica;
	Definir Salir Como Logica;
	Definir salirDeContactos Como Logica;
	Definir ContactosIngresados Como Numerica;
	Definir continuar Como Logica;
	Definir Numero_Repeticiones Como Numerica;
	Definir Contactos Como Caracter;
	Definir i Como Numerica;
	Definir N Como Numerica;
	Definir contactoCom Como Caracter;
	Definir Esp Como Caracter;
	Definir FullContacto Como Caracter;
	Definir NumeroContactosGuardar Como Numerica;
	Definir PosicionContactoEliminar Como Entera;
	Definir DeseaEliminarContacto Como Logica;
	Definir opcion Como Entero;	
	NumeroContactosGuardar<-0;
	FullContacto<-"";
	Esp<-"-";
	contactoCom<-"";
	N<-10;
	Numero_Repeticiones<-0;
	continuar<-Verdadero;
	ContactosIngresados<-0;
	salirDeContactos<-Falso;
	Salir<-Verdadero;
	PosicionContactoEliminar<-0;
	DeseaEliminarContacto <-Falso;	
	//------------------------
	Dimension Contactos(3);//no me permitio asignarle una variable
		
	Escribir 'Taller ciclos ejercicio 6 Contactos';
	Repetir
		continuar<-Verdadero;
		salirDeContactos<-Falso;
		menuPrincipal();
		Leer opcion;
							
		Segun opcion  Hacer
			1:	
				Mientras continuar==Verdadero y ContactosIngresados<3 Hacer
					
					Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer
						contactoCom<-AgregarDatosDeUnContacto(ContactosIngresados);//Agregue funcion para ingresar los contactos
						Contactos[ContactosIngresados]<-contactoCom; //						
						Escribir Contactos[ContactosIngresados];
						Escribir "Responda verdadero o falso para agregar otro contacto";
						Leer continuar;
						si continuar==Verdadero Entonces
							ContactosIngresados<-ContactosIngresados+1;
						SiNo
							continuar<-Falso;
							ContactosIngresados<-ContactosIngresados+1;
						FinSi
					FinPara
					
					si ContactosIngresados>=3 Entonces
						Escribir"haz completado el numero maximo de contactos que podemos guardar ahora te redirigiremos al Menú Principal";
					FinSi
				FinMientras	
													
			2:	
				si ContactosIngresados==0 Entonces
					Salir<-Falso;				
				FinSi
				si Salir==Falso Entonces
					Salir<-SinContactosREgistrados(Salir);//agregando Funcion para el caso en que no hay contactos registrados
//										
				SiNo
					Mientras salirDeContactos==Falso Hacer
						VisualizarContactos(Contactos,ContactosIngresados);//funcion que visualiza contactos almacenados en el vector
						Escribir "digite ´1´ para salir";
						Leer salirDeContactos;
						
					FinMientras
				FinSi
				
			3:	
					si ContactosIngresados==0 Entonces
						Salir<-Falso;				
					FinSi
					si Salir==Falso Entonces
						Salir<-SinContactosREgistrados(Salir);//agregando Funcion
					SiNo
						Mientras salirDeContactos==Falso Hacer
							VisualizarContactos(Contactos,ContactosIngresados);	
							Escribir "¿Desea eliminar un contacto?, responda verdadero(1) o falso(0) segun su eleccion";
							Leer DeseaEliminarContacto;
							
							si DeseaEliminarContacto==Verdadero Entonces
								Escribir "Por favor ingrese el numero que representa el contacto a eliminar";
								Leer PosicionContactoEliminar;
								Para j<-PosicionContactoEliminar-1 Hasta ContactosIngresados-2 Con Paso 1 Hacer
									Contactos[j]<-Contactos[j+1];
																		
								FinPara
								ContactosIngresados<-ContactosIngresados-1;
								
							SiNo
								Escribir "Usted esta siendo rederigido al menu principal";
								salirDeContactos<-Verdadero;
							FinSi
							
						FinMientras
					FinSi
					
				
					
				
						
			4:
				Escribir"Saliendo del sistema";
										
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
				
		FinSegun
	Hasta Que (opcion==4)
	
FinProceso
