SubProceso Imagen(VectorImagen)
	Definir i,limite Como Entera;
	Limite<-14;
	VectorImagen[0]<-'                             C O L U M N A S';
	VectorImagen[1]<-'  I____________________________________________________________________________I';
	VectorImagen[2]<-'  I 	   I  0   I  1   I  2   I  3   I  4   I  5   I  6   I  7   I  8   I  9     I';
	VectorImagen[3]<-'	  I____I_____ I_____ I_____ I_____ I______I______I______I______I______I________I';
	VectorImagen[4]<-'	  I  O I 1x1  I 2x1  I 3x1  I 4x1  I 5x1  I 6x1  I 7x1  I 8x1  I 9x1  I 10x1   I';
	VectorImagen[5]<-'	  I  1 I 1x2  I 2x2  I 3x2  I 4x2  I 5x2  I 6x2  I 7x2  I 8x2  I 9x2  I 10x2   I';
	VectorImagen[6]<-'	F I  2 I 1x3  I 2x3  I 3x3  I 4x3  I 5x3  I 6x3  I 7x3  I 8x3  I 9x3  I 10x3   I';
	VectorImagen[7]<-'	I I  3 I 1xa  I 2x4  I 3x4  I axa  I 5x4  I 6x4  I 7x4  I 8x4  I 9x4  I 10x4   I';
	VectorImagen[8]<-'	L I  4 I 1x5  I 2x5  I 3x5  I 4x5  I 5x5  I 6x5  I 7x5  I 8x5  I 9x5  I 10x5   I';
	VectorImagen[9]<-'	A I  5 I 1x6  I 2x6  I 3x6  I ax6  I 5x6  I 6x6  I 7x6  I 8x6  I 9x6  I 10x6   I';
	VectorImagen[10]<-'	S I  6 I 1x7  I 2x7  I 3x7  I 4x7  I 5x7  I 6x7  I 7x7  I 8x7  I 9x7  I 10x7   I';
	VectorImagen[11]<-'	  I  7 I 1x8  I 2x8  I 3x8  I 4x8  I 5x8  I 6x8  I 7x8  I 8x8  I 9x8  I 10x8   I';
	VectorImagen[12]<-'  I  8 I 1X9  I 2X9  I 3X9  I 4X9  I 5X9  I 6X9  I 7X9  I 8X9  I 9X9  I 10X9   I';  
	VectorImagen[13]<-'	  I  9 I 1x10 I 2x10 I 3x10 I 4x10 I 5x10 I 6x10 I 7x10 I 8x10 I 9x10 I 10x10  I';
	VectorImagen[14]<-'  I____________________________________________________________________________I';
	VectorImagen[15]<-' ';
	Limite<-14;
	Escribir "Para ver la imagen, mejor verla en vista completa";
	para i<-0 hasta limite Con Paso 1 Hacer
		Escribir VectorImagen(i);
		
	FinPara
FinSubProceso
SubProceso Resultado<-ValoresCalculados(MatrizResultados,filaDigitada,columnaDigitada)
	Definir Resultado Como Caracter;
	
	MatrizResultados[0,0]<-'1';
	MatrizResultados[0,1]<-'2';
	MatrizResultados[0,2]<-'3';
	MatrizResultados[0,3]<-'4';
	MatrizResultados[0,4]<-'5';
	MatrizResultados[0,5]<-'6';
	MatrizResultados[0,6]<-'7';
	MatrizResultados[0,7]<-'8';
	MatrizResultados[0,8]<-'9';
	MatrizResultados[0,9]<-'10';
	//---
	MatrizResultados[1,0]<-'2';
	MatrizResultados[1,1]<-'4';
	MatrizResultados[1,2]<-'6';
	MatrizResultados[1,3]<-'8';
	MatrizResultados[1,4]<-'10';
	MatrizResultados[1,5]<-'12';
	MatrizResultados[1,6]<-'14';
	MatrizResultados[1,7]<-'16';
	MatrizResultados[1,8]<-'18';
	MatrizResultados[1,9]<-'20';
	//---
	MatrizResultados[2,0]<-'3';
	MatrizResultados[2,1]<-'6';
	MatrizResultados[2,2]<-'9';
	MatrizResultados[2,3]<-'12';
	MatrizResultados[2,4]<-'15';
	MatrizResultados[2,5]<-'18';
	MatrizResultados[2,6]<-'21';
	MatrizResultados[2,7]<-'24';
	MatrizResultados[2,8]<-'27';
	MatrizResultados[2,9]<-'30';
	//---
	MatrizResultados[3,0]<-'4';
	MatrizResultados[3,1]<-'8';
	MatrizResultados[3,2]<-'12';
	MatrizResultados[3,3]<-'16';
	MatrizResultados[3,4]<-'20';
	MatrizResultados[3,5]<-'24';
	MatrizResultados[3,6]<-'28';
	MatrizResultados[3,7]<-'32';
	MatrizResultados[3,8]<-'36';
	MatrizResultados[3,9]<-'40';
	//----
	MatrizResultados[4,0]<-'5';
	MatrizResultados[4,1]<-'10';
	MatrizResultados[4,2]<-'15';
	MatrizResultados[4,3]<-'20';
	MatrizResultados[4,4]<-'25';
	MatrizResultados[4,5]<-'30';
	MatrizResultados[4,6]<-'35';
	MatrizResultados[4,7]<-'40';
	MatrizResultados[4,8]<-'45';
	MatrizResultados[4,9]<-'50';
	//----
	MatrizResultados[5,0]<-'6';
	MatrizResultados[5,1]<-'12';
	MatrizResultados[5,2]<-'18';
	MatrizResultados[5,3]<-'24';
	MatrizResultados[5,4]<-'30';
	MatrizResultados[5,5]<-'36';
	MatrizResultados[5,6]<-'42';
	MatrizResultados[5,7]<-'48';
	MatrizResultados[5,8]<-'54';
	MatrizResultados[5,9]<-'60';
	//---
	MatrizResultados[6,0]<-'7';
	MatrizResultados[6,1]<-'14';
	MatrizResultados[6,2]<-'21';
	MatrizResultados[6,3]<-'28';
	MatrizResultados[6,4]<-'35';
	MatrizResultados[6,5]<-'42';
	MatrizResultados[6,6]<-'49';
	MatrizResultados[6,7]<-'56';
	MatrizResultados[6,8]<-'63';
	MatrizResultados[6,9]<-'70';
	//-----
	MatrizResultados[7,0]<-'8';
	MatrizResultados[7,1]<-'16';
	MatrizResultados[7,2]<-'24';
	MatrizResultados[7,3]<-'32';
	MatrizResultados[7,4]<-'40';
	MatrizResultados[7,5]<-'48';
	MatrizResultados[7,6]<-'56';
	MatrizResultados[7,7]<-'64';
	MatrizResultados[7,8]<-'72';
	MatrizResultados[7,9]<-'80';
	//-----
	MatrizResultados[8,0]<-'9';
	MatrizResultados[8,1]<-'18';
	MatrizResultados[8,2]<-'27';
	MatrizResultados[8,3]<-'36';
	MatrizResultados[8,4]<-'45';
	MatrizResultados[8,5]<-'54';
	MatrizResultados[8,6]<-'63';
	MatrizResultados[8,7]<-'72';
	MatrizResultados[8,8]<-'81';
	MatrizResultados[8,9]<-'90';
	//--------
	MatrizResultados[9,0]<-'10';
	MatrizResultados[9,1]<-'20';
	MatrizResultados[9,2]<-'30';
	MatrizResultados[9,3]<-'40';
	MatrizResultados[9,4]<-'50';
	MatrizResultados[9,5]<-'60';
	MatrizResultados[9,6]<-'70';
	MatrizResultados[9,7]<-'80';
	MatrizResultados[9,8]<-'90';
	MatrizResultados[9,9]<-'100';
	Resultado<-MatrizResultados[filaDigitada,columnaDigitada];
FinSubProceso
Proceso MatrizTablaDeMultiplicar
	Definir Resultado Como Caracter;
	Definir Ver Como Logica;	
	Definir columnaDigitada,filaDigitada Como Entera;	
	Definir VectorImagen Como Caracter;
	Definir MatrizResultados Como Caracter;	
	Definir filas Como Numerica;
	Definir columnas Como Numerica;	
	//Inicializando variables
	Dimension VectorImagen[16];
	Dimension MatrizResultados[10,10];
	filaDigitada<-0;
	columnaDigitada<-0;
	filas<-10;
	columnas<-10;
	Resultado<-'';
	
	Ver<-Verdadero;		
	Repetir		
		Imagen(VectorImagen);
		Escribir "por favor digite la fila de la cual espera obtener el resultado";
		Leer filaDigitada;
		Escribir "por favor digite la columna de la cual espera obtener el resultado";
		Leer columnaDigitada;
		Resultado<-ValoresCalculados(MatrizResultados,filaDigitada,columnaDigitada);
		Escribir "El resultado de ",columnaDigitada+1," X ",filaDigitada+1," = ",Resultado;		
			
	Hasta Que  Ver==Falso
	
FinProceso
