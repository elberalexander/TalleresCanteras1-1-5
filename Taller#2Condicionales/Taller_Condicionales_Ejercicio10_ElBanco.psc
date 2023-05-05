Proceso Taller_Condicionales_Ejercicio10_SuBancoFiel
	Definir ahorros Como real;
	Definir opcion Como Entero;
	//Atributos del usuario
	Definir Titular Como Caracter;
	Definir Titular1 Como Caracter;
	definir Cantidad como Real;
	//opciones del menú
	Titular<-'';
	Titular1<- 'elber';
	ahorros<-500000;
	Cantidad<-0;
	
		
	Escribir 'Taller condicionales ejercicio 9 Profesor de geometria';
	Repetir
		Escribir "    ";
		Escribir '------------Por favor elige una opcion---------------';
		Escribir '1 Realizar abonos de cuenta(Ingresos)';
		Escribir '2 Realizar retiros';
		Escribir '3 Consultar saldo';
		Escribir '4 Salir';
		Leer opcion;
		Segun opcion  Hacer
			1:
				Escribir 'Por favor ingrese nombre del titular de la cuenta';
				Leer Titular;
				si Titular1==Titular Entonces
					Escribir "Por favor digite el valor a ingresar";
					Leer cantidad;
						si cantidad<0 Entonces
							Escribir "******No se aceptan valores negativos******";
						FinSi
						si	cantidad==0 Entonces
							Escribir "******El valor ingresado es cero por ende no se sumara nada a su cuenta******";
						FinSi
						si	Cantidad>0 Entonces
							ahorros<-ahorros + Cantidad;
							Escribir"usted ha abonado a su cuenta un valor de ", Cantidad, "pesos";
							Escribir "Su nuevo saldo es de ", ahorros;
						FinSi
				SiNo
						Escribir "******Titular ingresado no pudo ser encontrado******";
				FinSi
			2:	
				Escribir 'Por favor ingrese los datos solicitados';
				Escribir 'Por favor ingrese nombre del titular de la cuenta';
				Leer Titular;
				si Titular1==Titular Entonces
					Escribir "Por favor digite el valor a retirar de su cuenta";
					leer cantidad;
					si cantidad<0 o cantidad>ahorros entonces
						Escribir "******No es posible realizar la transaccion******";
						si cantidad>ahorros entonces
							Escribir "No es posible llevar a cabo la transaccion devido a saldo insuficiente";
						FinSi
						si cantidad<0 entonces
							Escribir "No es posible llevar a cabo la transaccion devido a que haz ingresado un valor no valido"; 
						FinSi
					SiNo
						ahorros<-ahorros-cantidad;
						Escribir "usted ha retirado la suma de ", cantidad, "pesos";
						Escribir "Su nuevo saldo es de ", ahorros," Pesos";	
					FinSi					
				SiNo
					Escribir "******Titular ingresado no pudo ser encontrado******";
				FinSi								
			3:
				Escribir 'Por favor ingrese los datos solicitados';
				Escribir 'Por favor ingrese nombre del titular de la cuenta';
				Leer Titular;
				si Titular1==Titular Entonces
					Escribir "Su saldo disponible es: ",ahorros, "pesos";
				SiNo
					Escribir "Titular ingresado no pudo ser encontrado";
				FinSi		
				
			De Otro Modo:
				Escribir '*******Opcion no valida*******';
		FinSegun
	Hasta Que (opcion==4)
FinProceso
