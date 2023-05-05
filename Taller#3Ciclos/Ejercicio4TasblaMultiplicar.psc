Proceso Taller_Ciclos_Ejercicio4TasblaMultiplicar
	
	
	//----------asignado valores a variables-------
	//TablaMultiplicar<-Verdadero;
	Definir valor_inicio Como Entero; 
	Definir Tabla_Ejecutar Como Entero; 
	Definir Resultado Como Entero;//opciones del menú
		
	Escribir 'Taller Ciclos ejercicio 3 Hasta que';
	//-------------------Inicia Proceso------------------------
	//Repetir	
		Escribir "Por Favor ingrese el valor de la tabla de multiplicar que desea ejecutar";
		Leer  Tabla_Ejecutar;
		Limpiar Pantalla;
		Escribir" ";
		Escribir"Usted esta ejecutando la tabla del ",Tabla_Ejecutar;
		Para valor_inicio<-0 Hasta 10 Con Paso 1 Hacer
			Resultado<-Tabla_Ejecutar*valor_inicio;
			Escribir Tabla_Ejecutar," X ",valor_Inicio," = ", Resultado;
		FinPara
		
		
	//Hasta Que	Figura=Falso
		

FinProceso
