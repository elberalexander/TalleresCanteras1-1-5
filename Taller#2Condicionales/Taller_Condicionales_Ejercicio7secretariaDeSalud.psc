Proceso Taller_Condicionales_Ejercicio7SecretariaDeSalud
	Definir opcion Como Logico;
	opcion <- Verdadero;
	definir nombre Como Caracter; 
	Definir pesoEnKilogramos Como Real;
	pesoEnKilogramos <- 0;
	Definir EstaturaEnMetros Como Real;
	EstaturaEnMetros <- 0;
	Definir IMC Como Real;
	IMC <- 0;
	Repetir
		Escribir 'Taller condicionales ejercicio 7 IMC';
		Escribir "Por favor digite su nombre";
		Leer nombre;
		Escribir 'Por favor digite su peso en kilogramos';
		Leer pesoEnKilogramos;
		Escribir 'Por favor ingrese su estatura en metros';
		Leer EstaturaEnMetros;
		Si pesoEnKilogramos<>0 Y EstaturaEnMetros<>0 Entonces
			IMC <- pesoEnKilogramos/(EstaturaEnMetros^2);
			Si IMC<18.5 Entonces
				Escribir "Se�or(a) ", nombre," Su indice de masa corporal (IMC) es de :",IMC,' Por lo tanto esta bajo de peso';
			FinSi
			Si (IMC>=18.5) Y (IMC<=24.9) Entonces
				Escribir "Se�or(a) ", nombre, " Su indice de masa corporal (IMC) es de :",IMC,' por lo tanto su rango de peso es saludable';
			FinSi
			Si (IMC>=25.0) Y (IMC<=29.9) Entonces
				Escribir "Se�or(a) ", nombre, " Su indice de masa corporal (IMC) es de :",IMC,' por lo tanto usted se encuentra en sobrepeso';
			FinSi
			Si IMC>=30.0 Entonces
				Escribir "Se�or(a) ", nombre, " Su indice de masa corporal (IMC) es de :",IMC,' Por lo tanto, usted se encuentra en sobrepeso';
			FinSi
		SiNo
			Escribir 'No podemos calcular el indice de peso corporal debido a que no completaste los datos solicitados';
		FinSi
	Hasta Que opcion=falso
FinProceso
