# Nelson Steven Sanabio Maldonado 20152734A

# Respuesta1 : Conociendo elementos básicos para ver el uso de los objetos en memoria

# (A) : Identificando los 20 elementos que están contenidos en el paquete METHODS.
# La función ls() simplemente lista los objetos en memoria. En este caso pondremos el nombre del paquete que nos pide, para que luego lo liste en la pantalla.

elementos<-ls("package:methods",all.names = TRUE)

#Listando los 20 primeros elementos
elementos[1:20]

#Se tiene un total de 385 elementos.
length(elementos)

# (B) : Determinando el entorno de cada una de las siguientes palabras.
# environment determina en que entorno trabaja segun el parametro.

# utils
environment(read.table)
environment(data)

# base
environment(matrix)

# grDevices
environment(jpeg)
        
# (C) : Verificando que la funcion smoothScatter este dentro del paquete graphics
# Como sabemos usar el ls y dentro de ello podemos poner el paquete, en este caso seria graphics e igualar a smoothScatter para ver si esta dentro del paquete.

grap <- ls("package:graphics",all.names = TRUE)
# Se mostrará una lista de booleanos.
find <- grap == "smoothScatter"

# El total es 88
length(grap)

# Hallando el indice de donde se encuentra la palabra smoothScatter
which(find) # 72



