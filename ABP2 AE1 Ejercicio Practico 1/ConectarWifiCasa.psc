Algoritmo ConectarWifiCasa
		
    Definir redSsid, contrasena Como Cadena
    Definir intentos Como Entero
    intentos <- 0
	
	Escribir "***************************************"
	Escribir "Para poder acceder a la red Wi-Fi debe"
	Escribir "ingresar el nombre y contraseña de la cuenta."
	Escribir "Cuenta con tres intentos."
	Escribir "Si falla los tres, el sistema será bloqueado"
	Escribir "por múltiples intentos fallidos"
	Escribir "***************************************"
	Escribir "    "
	
	
    Mientras intentos < 3 Hacer
        Escribir "Ingrese el nombre de la red (SSID):"
        Leer redSsid
		
		//ingreso de datos
        Si redSsid <> "casa" Entonces
            Escribir "Error: La red no existe."
			Escribir "Intente nuevamente."
			Escribir "    "
			Escribir "***************************************"
			Escribir "    "
            intentos <- intentos + 1
			
        Sino
		//	Escribir "    "
            Escribir "Ingrese la contraseña:"
            Leer contrasena
			
            Si contrasena = "1234" Entonces
				Escribir "    "
				Escribir "***********************************************"
				Escribir "Conexión exitosa. Bienvenido a la red Wi-Fi."
				Escribir "***********************************************"
				intentos <- 3
            Sino
				Escribir "    "
                Escribir "Error: Contraseña incorrecta."
				Escribir "Intente nuevamente."
				Escribir "    "
				Escribir "***************************************"
				Escribir "    "
                intentos <- intentos + 1
            FinSi
			
        FinSi
		
		//conteo de intentos
        Si intentos < 3 Entonces
            Escribir "Intentos restantes: ", 3 - intentos
		SiNo
			Escribir "Sistema bloqueado por múltiples intentos fallidos."
			Escribir "    "
			Escribir "***************************************"
			Escribir "    "
        FinSi
			
    FinMientras
	
FinAlgoritmo

