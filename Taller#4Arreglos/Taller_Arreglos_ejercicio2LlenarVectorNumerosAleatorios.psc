Proceso Vector5Posiciones
	Definir resultadoImpar Como Caracter;
	Definir resultadoImpar1 Como Caracter;
	Definir opcion Como Entera;
	Definir i Como Entera;
	Definir VectorInformacion Como Entero;
	Definir DatosIngresados Como Entera;
	Definir Numero_Repeticiones Como Entera;
	Definir Numero_Repeticiones1 Como Entera;
	Definir DatoIngresadoPorElUsuario Como Entera;
	Definir ClasificandoNumeros Como caracter;
	Definir NumerosImpares Como Entero;
	Definir ContadorPar Como Entero;
	Definir ContadorImpar Como Entero;
	Definir resultadoPar Como Caracter;
	Definir resultadoPar1 Como Caracter;
	//------------------------
	Dimension VectorInformacion(20);
	Dimension ClasificandoNumeros(2);
	Dimension NumerosImpares(19);
	DatosIngresados<-0;
	Numero_Repeticiones<-19;
	Numero_Repeticiones1<-0;
	ContadorPar<-0;
	ContadorImpar<-1;
	resultadoPar1<-"";
	resultadoImpar1<-"";
	
	
	Escribir 'Taller Arreglos ejercicio 1' ;
	Repetir
		Numero_Repeticiones1<-0;
				Escribir "    ";
		Escribir '------------Por favor elige una opcion---------------';
		Escribir '1 Llenar vector';
		Escribir '2 Salir del sistema';
		Leer opcion;
							
		
		Segun opcion  Hacer
			1:	
				Mientras Numero_Repeticiones1 <20 Hacer
					VectorInformacion[Numero_Repeticiones1]<-Aleatorio(1,100);
					
					Numero_Repeticiones1<-Numero_Repeticiones1+1;
				FinMientras
				
				
				
				Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer
					
					si VectorInformacion[i]%2==0 Entonces
						Escribir VectorInformacion[i];
						resultadoPar<-ConvertirATexto(VectorInformacion[i]);	
						resultadoPar<-Concatenar(resultadoPar1,resultadoPar);
						ClasificandoNumeros[ContadorPar]<-resultadoPar;
						resultadoPar1<-ClasificandoNumeros[ContadorPar];
						resultadoPar1<-Concatenar(resultadoPar1,' ');
						
					SiNo
						resultadoImpar<-ConvertirATexto(VectorInformacion[i]);	
						resultadoImpar<-Concatenar(resultadoImpar1,resultadoImpar);
						ClasificandoNumeros[Contadorimpar]<-resultadoImpar;
						resultadoImpar1<-ClasificandoNumeros[ContadorImpar];
						resultadoImpar1<-Concatenar(resultadoImpar1,' ');
						
					FinSi							
				FinPara
				
				Escribir Concatenar( "Números pares: ",ClasificandoNumeros[ContadorImpar]);
				Escribir Concatenar("Números Impares: ",ClasificandoNumeros[ContadorPar]);
					resultadoPar<-"";
					resultadoPar1<-"";
					ClasificandoNumeros[ContadorPar]<-"";
					resultadoImpar<-"";
					resultadoImpar1<-"";
					ClasificandoNumeros[ContadorImpar]<-"";
					
			2:
				Escribir"Saliendo del sistema";
										
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
				
		FinSegun
	Hasta Que (opcion==2)
	
FinProceso
