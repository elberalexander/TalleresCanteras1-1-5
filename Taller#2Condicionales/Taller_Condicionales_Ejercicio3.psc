Algoritmo Taller_Condicionales_Ejercicio3
	definir nombre Como Caracter;
	definir apellido Como Caracter;
	definir edadPersona Como Entero;
	escribir "Taller condicionales ejercicio 3";
	Escribir "por favor ingrese su nombre";
	leer nombre;
	escribir "Por favor ingrese su apellido";
	Leer apellido;
	escribir"Por favor ingrese su edad";
	Leer edadPersona;
	
	si edadPersona>=18 Entonces
		Escribir nombre," ", apellido, " Usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir nombre," ", apellido, " Usted es menor de edad, por lo tanto no puede entrar a la fiesta, por favor devuélvase a su casa.";
		
	FinSi
	

	
	
FinAlgoritmo
