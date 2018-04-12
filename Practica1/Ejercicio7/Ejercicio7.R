# Nelson Steven Sanabio Maldonado
# Haciendo uso de las clases, NaN, Inf, is.* 

# (a) : Almacena los valores en f1
f1<- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968, 8133)
f1^75

#Elevando a la potencia 75
V <- matrix((f1^75))

#mostrando los elementos que son diferentes a -Inf
V[V!=-Inf]

#Mostrando los indices de los Inf
which(V!=Inf)

# (b) : Almacenando los elementos en una matriz llamada mat

mat <- c(77875.40, 27551.45, 23764.30, -36478.88, -35466.25, -73333.85, 36599.69, -70585.69, -39803.81, 55976.34, 76694.82, 47032.00)
mat <- matrix (mat,3,4,byrow = TRUE)
mat

#(Item A) : Elevamos a la potencia 65 y dividimos por Inf y luego visualizamos
#los indices que son NaN
mat <- (mat^65)/Inf
mat
vect<-which(x=is.nan(x=mat),arr.ind = TRUE)
vect

#(Item B) : Elevando a la potencia 67 y llamamos second a la matriz
second <- (mat^67)
second

#Buscando los valores que son distintos de NaN y reemplazando por Inf
second[which(!is.na(second))]=Inf
second

#(Item C): Identificando los valores infinitos positivos y negativos

which(is.infinite(second))
second[which(is.infinite(second))]

# (C) : Corroborando los resultados 
f2 <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
f2
length(f2)
which(x=is.na(x=f2))
is.null(x=f2)

