SubProceso edad<-SolicitarDatosPersonales()//Funcion sin parámetros y que retorna valor
	definir edadPersona Como Entero;
	escribir"Por favor ingrese su edad";
	Leer edadPersona;
FinSubProceso

Algoritmo Taller_Condicionales_Ejercicio2
					
	
	si SolicitarDatosPersonales()<=18 Entonces
		Escribir "Usted aún es un niño(a)";
	FinSi
		
	
FinAlgoritmo
