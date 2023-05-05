
SubProceso DeterminarMayoriaDeEdad(edadPersona)//Funcion con parámetros que no retorna valor
	si edadPersona>=18 Entonces
		Escribir "Usted es mayor de edad";
	FinSi
FinSubProceso

Proceso Punto1TallerFunciones
	
		definir edadPersona Como Entero;
		escribir "Taller condicionales ejercicio 1";
		escribir"Por favor ingrese su edad";
		Leer edadPersona;
		DeterminarMayoriaDeEdad(edadPersona);
	
FinProceso
