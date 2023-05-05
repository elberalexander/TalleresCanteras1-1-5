Proceso MenuDeEjecuccionInfinita
	Definir VanderaNombre Como Logico;
	Definir Nombre Como Caracter;
	Definir opcion Como Entero;
	
	//opciones del menú
	Nombre<-'';
	VanderaNombre<-Falso;
	
	
	
	Escribir 'Taller ciclos ejercicio 5 Menú infinito';
	Repetir
		Escribir "    ";
		Escribir '------------Por favor elige una opcion---------------';
		Escribir '1 Capturar nombre';
		Escribir '2 Saludar persona';
		Escribir '3 Salir del sistema';
		Leer opcion;
		Segun opcion  Hacer
			1:
				Escribir 'Por favor ingrese su nombre';
				Leer Nombre;
				
				si Nombre=="" Entonces
					Escribir"disculpa pero no haz ingresado ningun nombre";
				SiNo
					Escribir "Tu nombre es : ", Nombre;
					VanderaNombre<-Verdadero;
				FinSi
									
			2:	
				si VanderaNombre==Verdadero Entonces
					Escribir 'Hola ', Nombre;
					
				SiNo
					Escribir "Aún no haz registrado tu nombre, para ello ingresa a la opcion 1";
				FinSi
			3:
				Escribir"Saliendo del sistema";
										
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
				
		FinSegun
	Hasta Que (opcion==3)
	
FinProceso
