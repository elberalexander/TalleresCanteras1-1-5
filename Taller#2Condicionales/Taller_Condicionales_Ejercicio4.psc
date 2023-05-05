Algoritmo Taller_Condicionales_Ejercicio4
	definir opcion Como Entero;
	definir novedad Como Caracter;;
	definir anotacion Como Logico;
	escribir "Taller condicionales ejercicio 4";
	Escribir "por favor elige una opcion";
	Escribir "1 Para alquilar pelicula";
	Escribir "2 Para consultar peliculas disponibles";
	Escribir "3 Para Recibir pelicula";
	Leer opcion;
	
	
	
	Segun  opcion Hacer
		1: Escribir "Bienvenido a la opcion alquilar pelicula";
		2: Escribir "Bienvenido al listado de peliculas disponibles";
		3:	Escribir "En breve recibiremos su pelicula";
			Escribir "Si desea reportar alguna novedad por favor digite VERDADERO de lo contrario digite FALSE";
			lEER anotacion;
			Si anotacion = verdadero entonces
			Escribir "Por favor ingrese el daño o novedad que presenta la pelicula al momento de recepcionarla";
			Leer novedad;
			FinSi
		
			
		De Otro Modo:
			Escribir "Opcion no valida";
			
	FinSegun
	
	

	
	
FinAlgoritmo
