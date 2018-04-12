# Nelson Steven Sanabio Maldonado
# El uso de factores, data.frame y búsqueda en ella

#Laborista - L
#Nacional - N
#Verdes - v
#Maories - M
#Otros - O

# (a) : Creando vectores sexo y partidos 
sexo <- c("F", "M", "M", "M", "F", "F", "F", "M", "M", "M","M", "F", "M", "F", "F", "F", "M", "M", "M","M")
sexo
partidos<-c("L","N","N","L","N","V","N","N","V","O","N","V","N","N","N","N","N","N","N","O")
partidos

# (b) : Respondiendo a las preguntas
#La función de factor se encarga de categorizar con niveles osea agrupando los datos
# Entonces lo que hace ordered es mostrarnos la desigualdades de los niveles
# Lo que observamos es que nos dice que hay mas personas masculinas que femeninas
fsexo <- factor(sexo,ordered = TRUE)
fsexo

fpartidos <- factor(partidos,ordered = TRUE)
#Igual que el caso anterior , Verdes > Otros > Nacional > Laborista
fpartidos

# (c) : Lo convertimos en un data.frame lo que hace es agrupar cada uno de 
# los datos osea organiza la información.

datos<-data.frame(partidos,sexo)
datos

#Continuando , muestra todas las personas de genero masculino
datos$partidos[datos$sexo=="M"]
# Un plus es la Table en cual nos muestra la cantidad de cada nivel
table(datos$partidos[datos$sexo=="M"])

# Muestra las personas con partido = nacional
datos$sexo[datos$partidos=="N"]
table(datos$sexo[datos$partidos=="N"])

# (d) : añadiendo 6 personas mas y usando la funcion rbind (añade filas de datos)
datosD <- data.frame(partidos=c("N","M","M","L","V","L"),
                     sexo=c("M","M","F","F","F","M"))
datosD2 <- rbind(datos,datosD)
datosD2

# Item ****

#Resultados de un porcentaje subjetivo a esa confianza
#Hay solamente 25 resultados pero agregue al final el numero 30
#93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 56, 45, 64, 31, 10, 29, 40, 95, 18, 61, 30
vector <- c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 56, 45, 64, 31, 10, 29, 40, 95, 18, 61, 30)

factorE<-function(Mat){
        arreglo<-dim(1)
        for( i in Mat){
                if(i >=0 && i<=30)
                        arreglo <- c(arreglo,"B")
                else if(i>30 && i <=70)
                        arreglo <- c(arreglo,"M")
                else 
                        arreglo <- c(arreglo,"A")
        }
        return(arreglo)        
}
Resul<-data.frame(datosD2,vector,data.frame(Proc_Subjec=factorE(vector)))
Resul

#De los partidos Laboristas se obtuvieron 2 Altos y B Bajo sobre la encuesta
# y luego se muestra los resultados
Resul$Proc_Subjec[Resul$partidos=="L"]
Resul$vector[Resul$partidos=="L"]

#De los partidos Nacional se obtuvieron 3 Bajo y 11 Altos sobre la encuesta
# y luego se muestra los resultados
Resul$Proc_Subjec[Resul$partidos=="N"]
Resul$vector[Resul$partidos=="N"]
