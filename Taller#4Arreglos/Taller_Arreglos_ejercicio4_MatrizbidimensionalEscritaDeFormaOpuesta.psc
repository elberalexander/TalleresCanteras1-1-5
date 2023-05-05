Proceso MatrizbidimensionalEscritaDeFormaOpuesta
	Definir ColumnaInicial Como Numerica;
	Definir Pasos Como Numerica;
	Definir j Como Numerica;
	Definir i Como Numerica;
	definir limite Como Numerica;
	
	Definir  filas,columnas Como Entero;
	Definir matriz como Texto;
	//Inicializando variables
	Dimension matriz[4,5];
	Filas<-4;
	Columnas<-4;
	limite<-4;
	Pasos<-1;
	ColumnaInicial<-0;
	matriz[0,0]<-'01';
	matriz[0,1]<-'02';
	matriz[0,2]<-'03';
	matriz[0,3]<-'04';
	matriz[0,4]<-'05';
	matriz[1,0]<-'06';
	matriz[1,1]<-'07';
	matriz[1,2]<-'08';
	matriz[1,3]<-'09';
	matriz[1,4]<-'10';
	matriz[2,0]<-'11';
	matriz[2,1]<-'12';
	matriz[2,2]<-'13';
	matriz[2,3]<-'14';
	matriz[2,4]<-'15';
	matriz[3,0]<-'16';
	matriz[3,1]<-'17';
	matriz[3,2]<-'18';
	matriz[3,3]<-'19';
	matriz[3,4]<-'20';
	Para Filas<-0 Hasta 3 Con Paso 1 Hacer
		para Columnas<-ColumnaInicial Hasta limite Con Paso Pasos Hacer
			Escribir Sin Saltar matriz[Filas,Columnas]," ";
		FinPara
		si Columnas==5 y limite==4 Entonces
			ColumnaInicial<-limite;
			limite<-0;
			pasos<--pasos;
		SiNo
			ColumnaInicial<-limite;
			limite<-4;
			pasos<-1;		
			
		FinSi
		
		Escribir " ";
	FinPara
	
FinProceso
