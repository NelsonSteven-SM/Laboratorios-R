# Nelson Steven Sanabio Maldonado
# Almacenando los registros en quakes 
quakes <- datasets::quakes
quakes

#Escoge un conjunto co una cierta condición y lo guarda en subquakes
subquakes <- subset(quakes,quakes$mag >=5)
subquakes

#Asignando mi espacio de trabajo
setwd("C:/Users/Lord Nelson/Desktop/Practica1/Ejer6/") 

#Exporto el subconjunto (subquakes) a un archivo .txt
write.table(subquakes, file="q5.txt",row.names = F)

# Importa el archivo txt en q5.frame
q5.frame<-read.table("C:/Users/Lord Nelson/Desktop/Practica1/Ejer6/q5.txt")
q5.frame

#Instalando los paquetes car para luego ser usados
install.packages("car")

duncan <- carData::Duncan
setwd("C:/Users/Lord Nelson/Desktop/Practica1/Ejer6/") 

# Inicializando el png para luego exportalo en archivo png
png(filename = "archivo.png")

#Usando los comando del ejercicio5 , PLOT
plot.new()
plot.window(range(duncan$education),range(duncan$income))
box()
axis(1)
axis(2)
points(duncan$education[duncan$prestige>80],pch=19,col="red")
points(duncan$education[duncan$prestige<=80],pch=1,col="red")
points(duncan$income[duncan$prestige>80],pch=19,col="blue")
points(duncan$income[duncan$prestige<=80],pch=1,col="blue")


mtext("Educación",side = 1,line = 3)
mtext("Ingresos",side = 2,line = 3)
mtext("Educacion vs Ingresos\n Dependiendo del Prestigio",side=3,line = 1,font = 2)
legend(60, 79,title = "\nPrestigio menores que 80", text.font = 3 ,legend=c("Educacion","Ingresos"),col=c("red", "blue"), pch = c(1,1), cex=1)

#Finaliza la exportación del archivo png
dev.off()
#Verifica el espacio de trabajo
getwd()
        
exer <- list(c(quakes,q5.frame,duncan))
exer

#Exportar e importar 
write.table(exer, file="Ejercicio_df.txt",sep = ",")
lista.data.frame <- read.table("C:/Users/Lord Nelson/Desktop/Practica1/Ejer6/Ejercicio_df.txt")

