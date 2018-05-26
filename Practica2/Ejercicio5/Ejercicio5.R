# Nelson Steven Sanabio Maldonado 20152734A
#Respuesta 5 : Uso de los caracteres de una cadena y la implementación del factorial de un número

# (a) : Crearemos una función en lo cual cumplirá el factorial de un número no negativo

minum <- function(x){
        resul <- 1
        if(x < 0) {return("EL número que ingreso es incorrecto")}
        
        if(x==0 || x==1) resul <- 1
        
        else # Hasta que x sea negativo
                while(x > 0){
                        resul<-x*resul
                        x<-x-1
                }
        return(resul)
}
minum(5) # 120
minum(12) # 479001600
minum(0) # 1
#El máximo valor que nos muestra la salida de la función es hasta 170, pasado ese rango nos sale Inf
minum(170) 
minum(171)

#(b) : Nos dan cierto parámetros para resolver el problema

unacadena <- "R fever"
index <- 1
ecount <- 0
resultado <- unacadena

while( ecount < 2 && index <= nchar(unacadena)){
        # Aqui se contabiliza la cantidad de e o E que aparece en el string
        if(substr(resultado,index,index)=='e' || substr(resultado,index,index)=='E') ecount<-ecount+1
        # Cuando llegue a 2 modificará el resultado pedido 
        if(ecount==2){
                #Guardamos la substring en resultado desde 1 hasta antes que aparezca el segundo "e" o "E"
                resultado <- substring(resultado,1,index-1)
        }
        index<-index+1
}
resultado

