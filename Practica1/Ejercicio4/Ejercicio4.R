# Nelson Steven Sanabio Maldonado

#El Uso de las clases , de los is.* y de la coarción.


# (a) : Usaremos la ayuda de R para ver cuando se dice que una
# Clase es explicita o implicita
# Una clase es explicita cuando tiene atributos de si misma y en el caso contrario
# es cuando no tiene atributos y se puede verificar con la ayuda de oldClass()
# Si nos sale NULL en oldClass() entonces quiere decir que no tiene atributos
help(class)

f1 <- array(data=1:36,dim=c(3,3,4))
f1
bar <- as.vector(f1)
bar
baz <- as.character(bar)
baz
qux <- as.factor(baz)
qux
quux <- bar+c(-0.1,0.1)
quux

#Determinando que tipo de clase es e identificando la clase
class(f1)
class(bar)
class(baz)
class(qux)
class(quux)

oldClass(f1)    # Clase Implicita
oldClass(bar)   # Clase Implicita
oldClass(baz)   # Clase Implicita
oldClass(qux)   # Clase Explicita
oldClass(quux)  # Clase Implicita

# (b): Uso del is.numeric,is.integer
f1f <- is.numeric(f1)+is.integer(f1)
f1f
barf <- is.numeric(bar)+is.integer(bar)
bazf<-is.numeric(baz)+is.integer(baz)
quxf<-is.numeric(qux)+is.integer(qux)
quuxf<-is.numeric(quux)+is.integer(quux)
#No es necesario poner los niveles en el factor
num <- factor(c(f1f,barf,bazf,quxf,quuxf))
#Cuando imprimimos notamos que no son las mismos resultados esto es debia 
# a que la coerción cambia los datos aumentando en uno
num
as.numeric(num)

# (c) : Creamos un vector A
# En la hoja del laboratorio en la matriz (3,3) no existe un numero, por lo que 
# puse un numero en este caso 1 y pues si ponia caracter vacio no me funciona
# cuando evaluo en as.logical()
A <- c(34,0,1,23,1,2,33,1,1, 42,0,1,41,0,2)
A
matrizA <- matrix(A,nrow = 5,ncol = 3,byrow = TRUE)
matrizA

#Coarcion en la matriz 
matrizA <- data.frame(matrizA)
matrizA

#Coarcion en la segunda columna 
matrizA$X2<-as.logical(matrizA$X2)
matrizA

#Coarcion en la tercera columna 
matrizA$X3<-as.logical.factor(matrizA$X3)
matrizA

