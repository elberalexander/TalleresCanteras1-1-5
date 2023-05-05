Proceso Taller_Condicionales_Ejercicio9ProfesorDeGeometria
	Definir opcion Como Entero;
	Definir Area Como Real;
	//rectangulo
	definir base1 como Real;
	definir base2 Como Real;
	Definir altura Como real;
	//triangulo
	
	Area<-0;
	base1 <- 0;
	base2<-0;
	altura<-0;
		
	Escribir 'Taller condicionales ejercicio 9 Profesor de geometria';
	Repetir
		Escribir 'por favor elige una opcion';
		Escribir '1 Calcular área de un rectángulo';
		Escribir '2  Calcular área de un triángulo';
		Escribir '3  Calcular área de un trapecio';
		Escribir '4 Salir';
		Leer opcion;
		Segun opcion  Hacer
			1:
				Escribir 'Por favor ingrese los datos solicitados';
				Escribir 'Por favor ingrese la medida de la base  del rectangulo en cm';
				Leer base1;
				Escribir "Ingrese la altura del rectangulo en cm";
				Leer altura;
				
				Si base1<>0 Y altura<>0 Entonces
					Area<-base1*altura;
					Escribir"El area del rectangulo es= ", Area, " cm^2" ;
				SiNo
					Escribir 'Por favor complete los datos solicitados de lo contrario no sera posible realizar el calculo';
				FinSi
			2:	
				Escribir 'Por favor ingrese los datos solicitados';
				Escribir 'Por favor ingrese la medida de la base  del triángulo en cm';
				Leer base1;
				Escribir "Ingrese la altura del triangulo en cm";
				Leer altura;
				Si base1<>0 Y altura<>0 Entonces
					Area<-(base1*altura)/2;
					Escribir"El area del triángulo es= ", Area, " cm^2" ;
				SiNo
					Escribir 'Por favor complete los datos solicitados de lo contrario no sera posible realizar el calculo';
				FinSi			
				
			3:
				Escribir 'Por favor ingrese los datos solicitados';
				Escribir 'Por favor ingrese la medida de la base1  del trapecio en cm';
				Leer base1;
				Escribir 'Por favor ingrese la medida de la base2  del trapecio en cm';
				Leer base2;
				Escribir "Ingrese la altura del trapecio en cm";
				Leer altura;
				Si base1<>0 Y base2<>0 y altura<>0 Entonces
					Area<-((base1+base2)*altura)/2;
					Escribir"El area del trapecio es= ", Area, " cm^2" ;
				SiNo
					Escribir 'Por favor complete los datos solicitados de lo contrario no sera posible realizar el calculo';
				FinSi		
				
			De Otro Modo:
				Escribir 'Opcion no valida';
		FinSegun
	Hasta Que (opcion==4)
FinProceso
