# Nelson Steven Sanabio Maldonado 20152734A
#Respuesta 6 : Haciendo uso de la familia apply para hacer mas rápido la solución y entender las matrices junto con la familia apply (capas y bloques)

# (A) : Uso de la herramienta lapply

matlist<- list(matrix(c(T,F,T,T),2,2),
               matrix(c("a","c","b","z","p","q"),3,2),
               matrix(1:8,2,4))

matlist
matlistlapply<-matlist # Sacando una copia para luego usarlo en lapply
for(i in 1:length(matlist)){
        matlist[[i]]<-t(matlist[[i]])
}

matlist
#Notaremos que son iguales los resultados
lapply(matlistlapply,t)

# (B) : Usando las herramientas de la familia apply
qux <- array(96:1,dim = c(4,4,2,3))
qux
# Colocamos dentro de qux el número 2 ya que nos pide solamente evaluar en la capa 2 y cuando tenemos mas de dos dimensiones usamos el margin = 3 para usar los niveles de capas
apply(qux[,,2,],3, diag)

# Lo mismo que lo anterior solo que cambia la función, en ves de diag será dim para poder calcular las dimensiones.
dimen <- apply(qux[4,,,],3,dim)
dimen

#Ahora queremos la suma de las dimensiones por filas entonces usamos la función apply
apply(dimen,1,sum)
