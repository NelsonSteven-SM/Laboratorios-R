# Nelson Steven Sanabio Maldonado
# Respondiendo a las subpreguntas con el software R
# Una pequeña Introducción de los comandos básicos de R

# (a) : Creando una secuencia de valores - usamos el comando seq
vectorA<- seq(5,11,0.3)
vectorA

# (b) : Invertir el VectorA
vectorA <- seq(11,5,-0.3)

# (c) : cada valor se repite 10 veces
#Para ordenar usamos sort() tiene un parametro que es decreciente , por default 
#esta como FALSE
vectorC <- sort(rep(c(-1,3,-5,7,-9),10),TRUE)
vectorC

# (d)
# Secuencia de enteros 6:12
vectorD <- c(6:12)

# Repetimos el numero 5.3 , tres veces
vectorD <- c(vectorD,rep(5.3,3))

# Se agrega el valor -3
vectorD <- c(vectorD,-3)

# Empieza del 102 obteniendo 50 numero con una secuencia de 9 numeros
vectorD <- c(vectorD,seq(102,50,length=9))

# Se visualiza la longitud del vectorD
length(vectorD)
vectorD

