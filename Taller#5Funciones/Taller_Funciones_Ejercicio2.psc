SubProceso edad<-SolicitarDatosPersonales()//Funcion sin par�metros y que retorna valor
	definir edadPersona Como Entero;
	escribir"Por favor ingrese su edad";
	Leer edadPersona;
FinSubProceso

Algoritmo Taller_Condicionales_Ejercicio2
					
	
	si SolicitarDatosPersonales()<=18 Entonces
		Escribir "Usted a�n es un ni�o(a)";
	FinSi
		
	
FinAlgoritmo
