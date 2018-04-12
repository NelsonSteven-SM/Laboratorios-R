# Nelson Steven Sanabio Maldonado
# Usando factores, data frame , rbind y busqueda de datos

#Cargando el espacio de trabajo en R
setwd("C:/Users/Lord Nelson/Desktop/Practica1/Ejer8/") 

# (a) : Creando factores para sexo y puntuacion , para persona solamente un vector
# de string
persona <- c("Stan","Francine","Steve","Roger","Hayley","Klaus")
sexo <- factor(c("M","F","M","M","F","M"))
puntuacion <- factor(c("Alto","Medio","Bajo","Alto","Medio","Medio"))

# Transformar los vectores en data frame
dframe <- data.frame(persona,sexo,puntuacion)
dframe

# (b) : Creando un vector edad
edad<- c(41,41,15,160,21,60)
# Añadiendo la columna a data frame que fue creado anteriormente
dframe<- cbind(dframe,edad)
dframe

# (c) : Creando un data frame llamado misdatos
misdatos <- data.frame(persona=c("Peter","Louis","Meg","Chris","Stewie"),
                       sexo=factor(c("M","F","F","M","M")),
                       edad = c(42,40,17,14,1),
                       puntuacion=c("","","","",""))
misdatos
# Agregando el dataframe (misdatos) a dframe
dframe <- rbind(dframe,misdatos)
dframe

#Guardando en el archivo Ejer8.txt
write.table(dframe,"Ejer8.txt",row.names = FALSE)
