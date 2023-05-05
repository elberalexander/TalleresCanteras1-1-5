Proceso EscuelaAutomovilistica
	Definir VanderaAgregarResultados Como Logica;
	Definir GuardaDatosIniciales Como Caracter;
	Definir ResultadoObtenido Como Caracter;
	Definir TotalDatosConResultado Como Caracter;	
	Definir TipoDeLicenciaSolicitada Como Caracter;
	Definir NumeroDeCedula Como Caracter;
	Definir NombreAlumno Como Caracter;
	Definir TelefonoDelAlumno Como Caracter;
	Definir DatosTotalesAlumno Como Caracter;
	Definir j Como Numerica;
	Definir Salir Como Logica;
	Definir AlumnosRegistrados Como Logica;
	Definir AlumnosIngresados Como Numerica;
	Definir continuar Como Logica;
	Definir Numero_Repeticiones Como Numerica;
	Definir MaximoAlumnos Como Caracter;
	Definir Calificaciones Como Caracter;
	Definir i Como Numerica;
	Definir N Como Numerica;
	Definir DatosUnicosDelAlumno Como Caracter;
	Definir Esp Como Caracter;
	Definir DatosVariablesDelAlumno Como Caracter;
	Definir NumeroContactosGuardar Como Numerica;
		
	Definir PosicionAnexoResultado Como Entera;
	Definir RegistrarResultadoExamen Como Logica;
	Definir opcion Como Entero;
	
	//opciones del men�
	TipoDeLicenciaSolicitada<-'';
	NumeroDeCedula<-'';
	NombreAlumno<-'';
	TelefonoDelAlumno<-"";
	
	NumeroContactosGuardar<-0;
	DatosVariablesDelAlumno<-"";
	Esp<-"-";
	DatosUnicosDelAlumno<-"";
	N<-10;
	Numero_Repeticiones<-0;
	continuar<-Verdadero;
	AlumnosIngresados<-0;
	AlumnosRegistrados<-Falso;
	Salir<-Verdadero;
	PosicionAnexoResultado<-0;
	RegistrarResultadoExamen <-Falso;
	VanderaAgregarResultados<-Falso;
	
	
	//------------------------
	Dimension MaximoAlumnos(8);//no me permitio asignarle una variable
	Dimension Calificaciones[8];
	Dimension GuardaDatosIniciales[8];
	
	
	
	Escribir 'Taller ciclos ejercicio 8 Escuela automovil�stica';
	Repetir
		continuar<-Verdadero;
		AlumnosRegistrados<-Falso;
		Escribir "    ";
		Escribir '------------Por favor elige una opcion---------------';
		Escribir '1 Registrar alumno';
		Escribir '2 Resumen de resultados';
		Escribir '3 Asignar resultados de la prueva';
		Escribir '4 Salir del sistema';
		Leer opcion;
							
		Segun opcion  Hacer
			1:	
				Mientras continuar==Verdadero y AlumnosIngresados<8 Hacer
					Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer
						Escribir " ";
						Escribir "---Usted esta ingresando Datos del alumno n�mero ",AlumnosIngresados+1,"----";
						Escribir "   ";
						Mientras NombreAlumno=="" Hacer
							Escribir 'Por favor ingrese el nombre del alumno";
							Leer NombreAlumno;		
							NombreAlumno<-Concatenar(NombreAlumno,"-");
						FinMientras
						Mientras NumeroDeCedula=="" Hacer
							Escribir 'Por favor ingrese n�mero de cedula del alumno';
							Leer NumeroDeCedula;
							NumeroDeCedula<-Concatenar(NumeroDeCedula,"-");
							
						FinMientras
						Mientras TelefonoDelAlumno=="" Hacer
							Escribir 'Por favor ingrese n�mero telefonico del alumno";
							Leer TelefonoDelAlumno;
							TelefonoDelAlumno<-Concatenar(TelefonoDelAlumno,"-");
							
						FinMientras
						//----------------------
						Mientras TipoDeLicenciaSolicitada=="" Hacer
							Escribir 'Por favor ingrese la licencia solicitada';
							Leer TipoDeLicenciaSolicitada;
							TipoDeLicenciaSolicitada<-Concatenar(TipoDeLicenciaSolicitada," ");
											
						FinMientras
						
						//--------------------
						DatosVariablesDelAlumno<-Concatenar(TelefonoDelAlumno,TipoDeLicenciaSolicitada);
						DatosUnicosDelAlumno<-Concatenar(NombreAlumno,NumeroDeCedula);
						DatosTotalesAlumno<-Concatenar(DatosUnicosDelAlumno,DatosVariablesDelAlumno );
						MaximoAlumnos[AlumnosIngresados]<-DatosTotalesAlumno; 
						GuardaDatosIniciales[AlumnosIngresados]<-DatosTotalesAlumno;
						NombreAlumno<-"";
						NumeroDeCedula<-"";
						TelefonoDelAlumno<-"";
						TipoDeLicenciaSolicitada<-"";
						Escribir MaximoAlumnos[AlumnosIngresados];
						Escribir "Responda verdadero o falso para agregar otro Alumno";
						Leer continuar;
						si continuar==Verdadero Entonces
							AlumnosIngresados<-AlumnosIngresados+1;
						SiNo
							continuar<-Falso;
							AlumnosIngresados<-AlumnosIngresados+1;
						FinSi
						
					FinPara
					
					si AlumnosIngresados>=8 Entonces
						Escribir"haz completado el cupo maximo de alumnos en el curso, a continuaci�n te redirigiremos al Men� Principal";
					FinSi
				FinMientras	
				
				
				
				
									
			2:	
				si AlumnosIngresados==0 Entonces
					Salir<-Falso;				
				FinSi
				si Salir==Falso Entonces
					
					Mientras Salir==Falso Hacer
						Escribir "--- A�n no hay alumnos registrados ----";
						Escribir "digite �1� o `Verdadero` para volver al men� principal";
						Leer Salir;					
					FinMientras
				SiNo
					Mientras AlumnosRegistrados==Falso Hacer
						Escribir "---listado de alumnos ----";
						Para i<-0 Hasta AlumnosIngresados-1 Con Paso 1 Hacer
							Escribir "Alumno ",i+1," ",MaximoAlumnos[i];
						FinPara	
						Escribir "Digite �1� o `Verdadero` para volver al men� principal";
						Leer AlumnosRegistrados;
						
					FinMientras
				FinSi
				
			3:	
					si AlumnosIngresados==0 Entonces
						Salir<-Falso;				
					FinSi
					si Salir==Falso Entonces
						
						Mientras Salir==Falso Hacer
							Escribir "--- A�n no hay alumnos registrados por tal motivo no se puede agregar un resultado ----";
							Escribir "digite �1� o `Verdadero` para volver al men� principal";
							Leer Salir;					
						FinMientras
					SiNo
						Mientras AlumnosRegistrados==Falso Hacer
							Escribir "---listado de alumnos registrados----";
							Para i<-0 Hasta AlumnosIngresados-1 Con Paso 1 Hacer
								Escribir "Alumno ",i+1," ",MaximoAlumnos[i];
							FinPara	
							Escribir "�Desea agregar el resultado de la prueba a un alumno?, responda verdadero(1) o falso(0) segun sea el caso";
							Leer RegistrarResultadoExamen;
							
							si RegistrarResultadoExamen==Verdadero Entonces
								Mientras VanderaAgregarResultados==Falso Hacer
									
									Escribir "Por favor ingrese el n�mero que representa al alumno al que agregara el resultado";
									Leer PosicionAnexoResultado;
									si PosicionAnexoResultado>AlumnosIngresados Entonces										
										Escribir"Error el alumno no existe, por favor ingrese un valor valido";
									SiNo
										VanderaAgregarResultados<-Verdadero;
									FinSi
								FinMientras
								VanderaAgregarResultados<-Falso;								
	
								Escribir"por favor ingresa el resultado obtenido por el alumno";
								Leer ResultadoObtenido;
								ResultadoObtenido<-Concatenar("Estado: ",ResultadoObtenido);
								Calificaciones[PosicionAnexoResultado-1]<-ResultadoObtenido;
								Escribir Calificaciones[PosicionAnexoResultado-1];
								//GuardaDatosIniciales<-MaximoAlumnos[PosicionAnexoResultado-1]
	
								TotalDatosConResultado<-Concatenar(GuardaDatosIniciales[PosicionAnexoResultado-1],Calificaciones[PosicionAnexoResultado-1]);
								
								MaximoAlumnos[PosicionAnexoResultado-1]<-TotalDatosConResultado;
								TotalDatosConResultado<-" ";									
																								
							SiNo
								Escribir "Usted esta siendo redirigido al menu principal";
								AlumnosRegistrados<-Verdadero;
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
