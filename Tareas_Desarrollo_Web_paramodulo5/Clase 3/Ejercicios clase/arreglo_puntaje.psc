// Algoritmo  para la manipulación de un arreglo
Algoritmo sin_titulo
	
	// Arreglo que sirve para almacenar los puntajes de los jugadores.
	// se asignan puntajes aleatorios
	Dimension puntaje[3]
	puntaje[1] = 100
	puntaje[2] = 80
	puntaje[3] = 250
	
	
	// mostrar los puntajes asignados
	ImprimirPuntaje(puntaje)
	puntaje[2] = 355	
	
	// mostrar los puntajes actualizados
	ImprimirPuntaje(puntaje)
	
FinAlgoritmo


Funcion ImprimirPuntaje(puntaje)
	
	Para contador <- 1 Hasta 3 Con Paso 1 Hacer
		Imprimirs "El puntaje del jugador: ", contador, " es: ", puntaje[contador] 
	FinPara
FinFuncion
