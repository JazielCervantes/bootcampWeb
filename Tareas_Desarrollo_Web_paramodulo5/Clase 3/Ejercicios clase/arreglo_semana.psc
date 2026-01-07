Algoritmo sin_titulo
	
	Dimension pastillero[7] 
	pastillero[1] = 2 // lubes
	pastillero[2] = 3 // martes
	pastillero[3] = 1 // miercole
	pastillero[4] = 0 // juves
	pastillero[5] = 6 // viernes
	pastillero[6] = 1 // sabado
	pastillero[7] = 0 // domingo
	
	
	Dimension Semana[7] 
	Semana[1] = "Lunes" // lubes
	Semana[2] = "Martes" // martes
	Semana[3] = "Miercoles" // miercole
	Semana[4] = "Jueves" // juves
	Semana[5] = "Viernes" // viernes
	Semana[6] = "Sabado" // sabado
	Semana[7] = "Domingo"
	
	
	
	// contadorDias, i, a 
	Para contadorDias <- 1 hasta 7 Con Paso 1 Hacer
		
		Imprimir "EL dia " , Semana[contadorDias], " me tocan: " , pastillero[contadorDias] , " pastillas"
	FinPara

FinAlgoritmo




