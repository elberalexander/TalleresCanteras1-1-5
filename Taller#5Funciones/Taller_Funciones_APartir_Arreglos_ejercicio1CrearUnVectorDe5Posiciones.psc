SubProceso LlenarVector(VectorInformacion, Numero_Repeticiones)
	Definir DatoIngresadoPorElUsuario Como Entero;
	Definir i Como Entero;
	Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer
		
		Escribir "Por favor ingresa un valor para la posicion ",i, " del vector";
		Leer DatoIngresadoPorElUsuario;
		VectorInformacion[i]<-DatoIngresadoPorElUsuario; 
		si i>=5 Entonces
			Escribir"haz llenado el valor maximo permitido para el vector, estos son los datos ingresados";
		FinSi
	FinPara
FinSubProceso
SubProceso visualizarDatosDelArreglo(VectorInformacion,Numero_Repeticiones)
	Definir i Como Numerica;
	Para i<-0 Hasta Numero_Repeticiones Con Paso 1 Hacer		
		Escribir "[",i,"] = ",VectorInformacion[i];		
	FinPara
FinSubProceso
Proceso Vector5Posiciones
	Definir opcion Como Entera;
	Definir i Como Entera;
	Definir VectorInformacion Como Entero;
	Definir DatosIngresados Como Entera;
	Definir Numero_Repeticiones Como Entera;
	Definir DatoIngresadoPorElUsuario Como Entera;
	//------------------------
	Dimension VectorInformacion(5);
	DatosIngresados<-0;
	Numero_Repeticiones<-4;
	
	Escribir 'Taller Arreglos ejercicio 1' ;
	Repetir
				Escribir "    ";
		Escribir '------------Por favor elige una opcion---------------';
		Escribir '1 Llenar vector';
		Escribir '2 Salir del sistema';
		Leer opcion;
							
		
		Segun opcion  Hacer
			1:	//				
				LlenarVector(VectorInformacion, Numero_Repeticiones);
				visualizarDatosDelArreglo(VectorInformacion,Numero_Repeticiones);
			
			2:
				Escribir"Saliendo del sistema";
										
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
				
		FinSegun
	Hasta Que (opcion==2)
	
FinProceso
