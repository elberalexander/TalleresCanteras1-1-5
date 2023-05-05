SubProceso Menu()
	Escribir "    ";
	Escribir '------------Por favor elige una opcion---------------';
	Escribir '1 Registrar alumno';
	Escribir '2 Resumen de resultados';
	Escribir '3 Asignar resultados de la prueva';
	Escribir '4 Salir del sistema';
FinSubProceso
SubProceso DatosTotalesAlumno<-registrarDatosAlumno(AlumnosIngresados)
	Definir NombreAlumno,NumeroDeCedula,TelefonoDelAlumno,TipoDeLicenciaSolicitada,DatosVariablesDelAlumno,DatosUnicosDelAlumno,DatosTotalesAlumno Como Caracter;
	NombreAlumno<-"";
	NumeroDeCedula<-"";
	TelefonoDelAlumno<-"";
	TipoDeLicenciaSolicitada<-"";
	Escribir " ";
	Escribir "---Usted esta ingresando Datos del alumno número ",AlumnosIngresados+1,"----";
	Escribir "   ";
	Mientras NombreAlumno=="" Hacer
		Escribir 'Por favor ingrese el nombre del alumno";
		Leer NombreAlumno;		
		NombreAlumno<-Concatenar(NombreAlumno,"-");
	FinMientras
	Mientras NumeroDeCedula=="" Hacer
		Escribir 'Por favor ingrese número de cedula del alumno';
		Leer NumeroDeCedula;
		NumeroDeCedula<-Concatenar(NumeroDeCedula,"-");
		
	FinMientras
	Mientras TelefonoDelAlumno=="" Hacer
		Escribir 'Por favor ingrese número telefonico del alumno";
		Leer TelefonoDelAlumno;
		TelefonoDelAlumno<-Concatenar(TelefonoDelAlumno,"-");
		
	FinMientras
	//----------------------
	Mientras TipoDeLicenciaSolicitada=="" Hacer
		Escribir 'Por favor ingrese la licencia solicitada';
		Leer TipoDeLicenciaSolicitada;
		TipoDeLicenciaSolicitada<-Concatenar(TipoDeLicenciaSolicitada," ");
		
	FinMientras
	DatosVariablesDelAlumno<-Concatenar(TelefonoDelAlumno,TipoDeLicenciaSolicitada);
	DatosUnicosDelAlumno<-Concatenar(NombreAlumno,NumeroDeCedula);
	DatosTotalesAlumno<-Concatenar(DatosUnicosDelAlumno,DatosVariablesDelAlumno );	
FinSubProceso//----------------------------------------------------------------------------------
SubProceso GuardaDatosTotales(MaximoAlumnos,GuardaDatosIniciales,DatosTotalesAlumno,AlumnosIngresados)
	MaximoAlumnos[AlumnosIngresados]<-DatosTotalesAlumno; 
	GuardaDatosIniciales[AlumnosIngresados]<-DatosTotalesAlumno;
	Escribir MaximoAlumnos[AlumnosIngresados];
	
FinSubProceso
SubProceso ListadoAlumnosRegistrados(MaximoAlumnos,AlumnosIngresados)
	Definir i Como Entero;
	Escribir "---listado de alumnos registrados----";
	Para i<-0 Hasta AlumnosIngresados-1 Con Paso 1 Hacer
		Escribir "Alumno ",i+1," ",MaximoAlumnos[i];
	FinPara
FinSubProceso
SubProceso Salir<-SinAlumnos(Salir)
	Mientras Salir==Falso Hacer
		Escribir "--- Aún no hay alumnos registrados por tal motivo no se puede agregar un resultado ----";
		Escribir "digite ´1´ o `Verdadero` para volver al menú principal";
		Leer Salir;					
	FinMientras
FinSubProceso
SubProceso VanderaAgregarResultados<-AgregarResultadoAUnAlumno(VanderaAgregarResultados,AlumnosIngresados,PosicionAnexoResultado Por Referencia)
	//Definir PosicionAnexoResultado Como Entera;
	Mientras VanderaAgregarResultados==Falso Hacer
		
		Escribir "Por favor ingrese el número que representa al alumno al que agregara el resultado";
		Leer PosicionAnexoResultado;
		si PosicionAnexoResultado>AlumnosIngresados Entonces										
			Escribir"Error el alumno no existe, por favor ingrese un valor valido";
		SiNo
			VanderaAgregarResultados<-Verdadero;
		FinSi
	FinMientras
FinSubProceso
Proceso EscuelaAutomovilistica
	Definir DatosTotalesAlumno Como Caracter;
	Definir VanderaAgregarResultados Como Logica;
	Definir GuardaDatosIniciales Como Caracter;
	Definir ResultadoObtenido Como Caracter;
	Definir TotalDatosConResultado Como Caracter;		
	Definir j Como Numerica;
	Definir Salir Como Logica;
	Definir AlumnosRegistrados Como Logica;
	Definir AlumnosIngresados Como Entero;;
	Definir continuar Como Logico;;
	Definir Numero_Repeticiones Como Numerica;
	Definir MaximoAlumnos Como Caracter;
	Definir Calificaciones Como Caracter;
	Definir i Como Numerica;
	Definir N Como Numerica;
	
	Definir Esp Como Caracter;
	
	Definir NumeroContactosGuardar Como Numerica;
		
	Definir PosicionAnexoResultado Como Entera;
	Definir RegistrarResultadoExamen Como Logica;
	Definir opcion Como Entero;
	
	//opciones del menú
	NumeroContactosGuardar<-0;	
	Esp<-"-";	
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
	
	
	
	Escribir 'Taller ciclos ejercicio 8 Escuela automovilìstica';
	Repetir
		continuar<-Verdadero;
		AlumnosRegistrados<-Falso;
		Menu();
		Leer opcion;
							
		Segun opcion  Hacer
			1:	
				Mientras continuar==Verdadero y AlumnosIngresados<8 Hacer
					Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer
						DatosTotalesAlumno<-registrarDatosAlumno(AlumnosIngresados);
						GuardaDatosTotales(MaximoAlumnos,GuardaDatosIniciales,DatosTotalesAlumno,AlumnosIngresados);						
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
						Escribir"haz completado el cupo maximo de alumnos en el curso, a continuación te redirigiremos al Menú Principal";
					FinSi
				FinMientras	
				
				
				
				
									
			2:	
				si AlumnosIngresados==0 Entonces
					Salir<-Falso;				
				FinSi
				si Salir==Falso Entonces
					Salir<-SinAlumnos(Salir);
				SiNo
					Mientras AlumnosRegistrados==Falso Hacer
						ListadoAlumnosRegistrados(MaximoAlumnos,AlumnosIngresados);
//							
						Escribir "Digite ´1´ o `Verdadero` para volver al menú principal";
						Leer AlumnosRegistrados;
						
					FinMientras
				FinSi
				
			3:	
					si AlumnosIngresados==0 Entonces
						Salir<-Falso;				
					FinSi
					si Salir==Falso Entonces
						Salir<-SinAlumnos(Salir);
					SiNo
						Mientras AlumnosRegistrados==Falso Hacer
							ListadoAlumnosRegistrados(MaximoAlumnos,AlumnosIngresados);
//							
							Escribir "¿Desea agregar el resultado de la prueba a un alumno?, responda verdadero(1) o falso(0) segun sea el caso";
							Leer RegistrarResultadoExamen;
							
							si RegistrarResultadoExamen==Verdadero Entonces
								VanderaAgregarResultados<-AgregarResultadoAUnAlumno(VanderaAgregarResultados,AlumnosIngresados,PosicionAnexoResultado);
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
						
						FinMientras
					FinSi
					
			4:
				Escribir"Saliendo del sistema";
										
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
				
		FinSegun
	Hasta Que (opcion==4)
	
FinProceso
