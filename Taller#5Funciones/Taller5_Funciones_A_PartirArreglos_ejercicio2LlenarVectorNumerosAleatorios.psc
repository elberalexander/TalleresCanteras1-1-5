SubProceso LlenarVectorDeFormaAleatoria(VectorInformacion)
	Definir Numero_Repeticiones1 Como Numerica;
	Numero_Repeticiones1<-0;
	Mientras Numero_Repeticiones1 <20 Hacer
		VectorInformacion[Numero_Repeticiones1]<-Aleatorio(1,100);
		
		Numero_Repeticiones1<-Numero_Repeticiones1+1; 		
	FinMientras
FinSubProceso
SubProceso ClasificaLosValoresDelVector(VectorInformacion,ClasificandoNumeros,ClasificandoNumeros)
	
	Definir resultadoImpar,resultadoImpar1 Como Caracter;
	Definir resultadoPar1,resultadoPar Como Caracter;
	Definir ContadorPar,ContadorImpar,Numero_Repeticiones Como Entera;
	Definir i Como Numerica;
	ContadorPar<-0;
	ContadorImpar<-1;
	Numero_Repeticiones<-19;
	resultadoPar1<-"";
	resultadoImpar1<-"";
	//--
	resultadoPar<-"";
	resultadoPar1<-"";
	ClasificandoNumeros[ContadorPar]<-"";
	resultadoImpar<-"";
	resultadoImpar1<-"";
	ClasificandoNumeros[ContadorImpar]<-"";
	Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer
		Escribir VectorInformacion[i];
		si VectorInformacion[i]%2==0 Entonces
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
FinSubProceso
Proceso Vector5Posiciones
	
	
	Definir ContadorPar Como Entero;
	Definir ContadorImpar Como Entero;	
	Definir VectorInformacion,NumerosImpares,Numero_Repeticiones1,opcion  Como Entero;
	Definir ClasificandoNumeros Como caracter;
	
	//------------------------
	Dimension VectorInformacion(20);
	Dimension ClasificandoNumeros(2);
	Dimension NumerosImpares(19);
	ContadorImpar<-1;
	ContadorPar<-0;
	Escribir 'Taller Arreglos ejercicio 1' ;
	Repetir
		Numero_Repeticiones1<-0;
				Escribir "    ";
		Escribir '------------Por favor elige una opcion---------------';
		Escribir '1 Llenar vector';
		Escribir '2 Salir del sistema';
		Leer opcion;
							
		
		Segun opcion  Hacer
			1:	LlenarVectorDeFormaAleatoria(VectorInformacion);							
				ClasificaLosValoresDelVector(VectorInformacion,ClasificandoNumeros,ClasificandoNumeros);
				Escribir Concatenar( "Números pares: ",ClasificandoNumeros[ContadorImpar]);
				Escribir Concatenar("Números Impares: ",ClasificandoNumeros[ContadorPar]);	
			2:
				Escribir"Saliendo del sistema";										
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
				
		FinSegun
	Hasta Que (opcion==2)
	
FinProceso
