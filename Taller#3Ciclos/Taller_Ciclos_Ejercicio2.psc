Proceso Taller_Ciclos_Ejercicio2
	Definir vertical Como Logico;
	Definir Vandera_Asteriscos Como Entero;
	Definir x Como Caracter;
	Definir Horizontal Como logico;
	Definir espacios_Imprimir Como Entero;
	Definir asteriscos_Imprimir Como Entero;
	Definir Figura Como Logico;
	Definir opcion Como Entero;
	Definir Esp Como Entero;
	Definir menosEspacios Como Entero;
	Definir numAsteriscos Como Entero;
	Definir vanderaNoEscrbirAsteriscos Como Entero;
	//----------asignado valores a variables-------
	Figura<-Verdadero;
	numAsteriscos<-0;
	Esp <-10;
	menosEspacios<-0;
	espacios_Imprimir<-Esp;
	asteriscos_imprimir<-0;
	x<-'*';
	vertical<-Verdadero;
	Horizontal<-Verdadero;
	espacios_Imprimir<-espacios_Imprimir;
	asteriscos_Imprimir<-asteriscos_imprimir;
	vanderaNoEscrbirAsteriscos<-0;
	//opciones del menú
		
	Escribir 'Taller Ciclos ejercicio 2';
	//Repetir
	Mientras	Figura=verdadero Hacer
		Escribir ' ';
		Mientras Horizontal=verdadero Hacer
			Escribir sin saltar ' ';
			espacios_Imprimir<-espacios_Imprimir-1;
			
			si espacios_Imprimir==0 Entonces
				Horizontal<-Falso;
				menosEspacios<-menosEspacios+1;
				espacios_Imprimir<-Esp-menosEspacios;
				numAsteriscos<-numAsteriscos+1;
				vertical<-Verdadero;
			FinSi
		FinMientras
		
		
		Mientras vertical=verdadero Hacer
			Horizontal<-Verdadero;
			asteriscos_Imprimir<-asteriscos_Imprimir+1;
			//Vandera_Asteriscos<-Esp -1;
			Escribir sin saltar x;
			si asteriscos_Imprimir==numAsteriscos Entonces
				vertical<-Falso;	
				asteriscos_Imprimir<-0;
			FinSi
			si numAsteriscos>=Esp y asteriscos_Imprimir==0  Entonces
				numAsteriscos<-numAsteriscos+1;
				vanderaNoEscrbirAsteriscos<-vanderaNoEscrbirAsteriscos+1;
				horizontal<-Falso;
				vertical<-Verdadero;
				Escribir " ";
				si vanderaNoEscrbirAsteriscos>1 Entonces
					vertical<-Falso;	
					Figura<-Falso;
				FinSi
			FinSi
		FinMientras
		
		
	FinMientras
	
	
	
	//Hasta Que (opcion==4)
FinProceso
