Proceso Taller_Ciclos_Ejercicio1
	Definir ControlCiclo Como real;
	Definir x Como Caracter;
	Definir ciclosHorizontales Como Entero;
	Definir cicloH Como Entero;
	Definir opcion Como Entero;
	x<-'*';
	cicloH<-1;
	
	//opciones del menú
		
	Escribir 'Taller Ciclos ejercicio 1';
	//Repetir
	Para ControlCiclo<-1 Hasta 10 Con Paso 1 Hacer
		
		Para ciclosHorizontales<-1 Hasta ControlCiclo Con Paso 1 Hacer
			cicloH<-cicloH+1;
				Escribir sin saltar	x;	
			FinPara
			Escribir '';
			
		FinPara
	//Hasta Que (opcion==4)
FinProceso
