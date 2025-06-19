Algoritmo inscripcionUniversidad
	
	// variables logicas sugeridas
    Definir completoCursosPrevios, promedioSuperiorA6, haPagadoMatricula, promedioEntre5y6, completo80Porciento Como Logico
	// otras variables
    Definir puedeInscribirse Como Logico
	Definir promedio, porcentajeCursosCompletados Como Real
	Definir pagoMatricula Como Entero
	
	//*********************************************
	//CONSIDERANDO LAS REACCIONES ANTE LAS NOTAS
	//*********************************************
	// todas condicionadas a que solo se puedan ingresar los datos solicitados
	Repetir
		Escribir "Ingrese el promedio de notas del estudiante (escala de 1 a 7):"
		Leer promedio
	Hasta Que promedio >= 1 Y promedio <= 7
	
	Repetir
		Escribir "Ingrese el porcentaje de cursos completados (ej: 100 para todos, 80 para 80%):"
		Leer porcentajeCursosCompletados
	Hasta Que porcentajeCursosCompletados >= 1 Y porcentajeCursosCompletados <= 100
	
	Repetir
		Escribir "¿Ha pagado la matrícula?"
		Escribir "Ingrese opción 1 si pago la matricula"
		Escribir "Ingrese opción 2 si no ha pagado la matricula"
		Leer pagoMatricula
	Hasta Que pagoMatricula = 1 O pagoMatricula = 2

    puedeInscribirse <- Falso
	
    // Lógica de inscripción
    Si promedio >= 7 Entonces
        Si porcentajeCursosCompletados = 100 Y pagoMatricula = 1 Entonces
            puedeInscribirse <- Verdadero
        FinSi
    Sino
        Si promedio >= 5.5 Y promedio < 7 Entonces
            Si porcentajeCursosCompletados >= 80 Y pagoMatricula = 1 Entonces
                puedeInscribirse <- Verdadero
            FinSi
        FinSi
		
    FinSi
	
    // Resultado
    Si puedeInscribirse Entonces
        Escribir "El estudiante puede inscribirse en el curso."
    Sino
        Escribir "El estudiante NO cumple con los requisitos para inscribirse."
    FinSi
	
	
	

	
	
	
FinAlgoritmo
