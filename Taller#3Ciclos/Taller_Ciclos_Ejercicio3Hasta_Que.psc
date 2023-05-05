Proceso Taller_Ciclos_Ejercicio3_Hasta_Que
	
	Definir Finalizar_Programa Como Numerica;
	Definir Rep_Esp Como Numerica;
	Definir contador Como Numerica;
	Definir AsteriscosB Como Numerica;
	Definir RehabilitarDibujarAsteriscos Como Logica;
	Definir Vandera_Deshabilitar_Espacios Como Logica;
	Definir Vandera_RepetirEspacios Como Logico;
	Definir AsteriscosBase Como Entero;

	Definir DibunjarAsteriscos Como Logico;
	Definir Vandera_Asteriscos Como Entero;
	Definir x Como Caracter;
	Definir DibujarEspacios Como logico;
	Definir espacios_Imprimir Como Entero;
	Definir asteriscos_Imprimir Como Entero;
	Definir Figura Como Logico;
	Definir opcion Como Entero;
	Definir Esp Como Entero;
	Definir ReducirEspacios Como Entero;
	Definir numAsteriscos Como Entero;
	Definir vanderaNoEscribirAsteriscos Como Entero;
	Definir Vandera_Repetir Como Entero;
	Definir VanderaRe_Repetir Como Entero;
	//----------asignado valores a variables-------
	Figura<-Verdadero;
	numAsteriscos<-0;
	Esp <-10;
	Rep_Esp<-Esp;
	ReducirEspacios<-0;
	espacios_Imprimir<-Esp;
	asteriscos_imprimir<-1;
	x<-'*';
	DibunjarAsteriscos<-Verdadero;
	DibujarEspacios<-Verdadero;
	espacios_Imprimir<-espacios_Imprimir;
	asteriscos_Imprimir<-asteriscos_imprimir;
	vanderaNoEscribirAsteriscos<-0;
	Vandera_Repetir<-0;
	VanderaRe_Repetir<-0;
	Vandera_RepetirEspacios <-Falso;
	Vandera_Deshabilitar_Espacios<-Falso;//Esta vandera es para condicionar aque pueda deshasbilitar los espacios y unicamente escribir un renlon de astericos.
	RehabilitarDibujarAsteriscos<-Falso;
	AsteriscosBase<-Esp+1;
	Finalizar_Programa<-2*Esp;
	contador<-0;
	//opciones del menú
		
	Escribir 'Taller Ciclos ejercicio 3 Hasta que';
	//Repetir
	Repetir	
		//Escribir ' ';
		Repetir 
			Escribir sin saltar ' ';
			espacios_Imprimir<-espacios_Imprimir-1;
			
			si espacios_Imprimir==0 Entonces
				DibujarEspacios<-Falso;
				ReducirEspacios<-ReducirEspacios+1;
				
				espacios_Imprimir<-Esp-ReducirEspacios;
				//numAsteriscos<-numAsteriscos+1;
				DibunjarAsteriscos<-Verdadero;
				si Esp==ReducirEspacios Entonces//esto para iniciar la base nuevamente con espacios
					Esp<-Esp-1;
					ReducirEspacios<-0;
					espacios_Imprimir<-Esp-ReducirEspacios;
					Vandera_Deshabilitar_Espacios<-Verdadero;
					RehabilitarDibujarAsteriscos<-Verdadero;
				FinSi
				si Vandera_RepetirEspacios==Verdadero Entonces
					Esp<-Rep_Esp-1;
					ReducirEspacios<-0;
					espacios_Imprimir<-Esp-ReducirEspacios;
				FinSi
			FinSi
		Hasta Que DibujarEspacios=Falso
		
		
		Repetir 
			si Vandera_Deshabilitar_Espacios==falso Entonces
				DibujarEspacios<-Verdadero;	
			FinSi
			//Vandera_Asteriscos<-Esp -1;
			Escribir sin saltar x;
			numAsteriscos<-numAsteriscos+1;
			si asteriscos_Imprimir==numAsteriscos Entonces
				Escribir ' ';
				DibunjarAsteriscos<-Falso;	
				numAsteriscos<-0;
				asteriscos_Imprimir<-asteriscos_Imprimir+2;
				AsteriscosB<-1;
				AsteriscosBase<-AsteriscosBase-1;
				Finalizar_Programa<-Finalizar_Programa-1;
				si RehabilitarDibujarAsteriscos==Verdadero Entonces
					DibunjarAsteriscos<-Verdadero;//con esta linea dejo activada los asteriscos y deshabilito espacios
					Vandera_Deshabilitar_Espacios<-Falso;
					RehabilitarDibujarAsteriscos<-Falso;
				FinSi
				si asteriscosB==1 y AsteriscosBase==0  Entonces
					asteriscos_Imprimir<-3;
					AsteriscosBase<-1;
					contador<-contador+1;
					si	contador==1 Entonces
						Vandera_RepetirEspacios<-Verdadero;
					FinSi
					si	contador==2 Entonces//aqui garantizo que unicamente se repita 2 veces la
						//los dos filas de la base que tiene 3 asteriscos.
						Vandera_RepetirEspacios<-Falso;
						AsteriscosBase<-20;
					FinSi
					
				FinSi
			FinSi
			AsteriscosB<-0;
			si Finalizar_Programa==0 Entonces
				Figura<-Falso;
			FinSi
		Hasta Que DibunjarAsteriscos=Falso
		
		
		
		Hasta Que	Figura=Falso
		Escribir"     ";
		Escribir "La parte del tronco es dinamiso de acuerdo al valor que se de en la variable ESP";
	
	
	
	//Hasta Que (opcion==4)
FinProceso
