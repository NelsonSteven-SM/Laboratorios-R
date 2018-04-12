# Nelson Steven Sanabio Maldonado
# Explorando los comandos y parametros de las matrices en R

# (a) : Creamos una matriz de 4x2 y ordenados por filas
# Dentro de la función matrix esta un parametro (byrow) por default esta FALSE
matrizA <- c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5)
matrizA <- matrix(matrizA,4,2,TRUE)
matrizA

# (b) : Eliminado una fila y ver el resultado de su dimension de la nueva matriz
matrizB <- matrizA[-1,]
matrizB
dim(matrizB)

# (c) : Sobrescribiendo la matriz de A, ordenando de menor a mayor
column2 <- sort(matrizA[,2])
column2
matrizC<- matrizA[,-2]
matrizC
matrizC <- cbind(matrizC,column2)
matrizC 

# (d) : Usando el item C para la siguiente operación
# Devuelve la segunda columna del vector sin el ultimo valor 
matrizC
matrizD <- matrizC[-4,]
matrizD <- matrizD[,-1]
matrix(matrizD)

# (e) : añadiendo 4 valores 
matrizE <- matrix(matrizC[3:4,1:2],2,2)
matrizE

# (f) : Reemplazando los valores a la matriz C, indices(4,2)(1,2)(4,1)(1,1) 
#por la matriz por -1/2 de la diagonal de la matriz E
matrizC[1,]<--matrizE[2,2]/2
matrizC[4,]<--matrizE[1,1]/2
matrizC
# (g) : Verificando que es una matriz 4x4 de ceros
A <- diag(c(2,3,5,-1))
A
IdA <- diag(1,nrow = 4)
IdA

solve(A)%*%A-IdA


