Proceso NumerosPrimos
	Definir contadorPrimo Como Numerica;
	Definir VectorNumeros Como Numerica;
	Definir Apuntador Como Real;
	Definir Limite Como Entero;
	
	Definir j Como Numerica;
	Definir i Como Numerica;	
	
	
	//Inicializando variables
	Dimension VectorNumeros[1000];
	contadorPrimo<-0;
	Apuntador<-0;
	Limite<-1000;
	para i<-1 hasta limite Con Paso 1 Hacer
		Para j<-1 hasta i Con Paso  1 Hacer
			si i%j==0 Entonces
				contadorPrimo<-contadorPrimo+1;
			FinSi
		FinPara
		si contadorPrimo==2 Entonces
		//	Escribir "es primo ",i;
			VectorNumeros[Apuntador]<-i;
			Apuntador<-Apuntador+1;
//		
		FinSi
		contadorPrimo<-0;		
	FinPara
	Escribir"N�meros primos desde 1 hasta ",limite;
	Para i<-0 hasta Apuntador-1 Con Paso 1 Hacer
		Escribir Sin Saltar VectorNumeros[i],' ';
	FinPara
	
FinProceso
