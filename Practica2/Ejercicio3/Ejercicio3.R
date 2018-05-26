# Nelson Steven Sanabio Maldonado 20152734A
# El código muestra el uso de los vectores, matrices, sub cadenas, condicionales, booleanos, bucle (for) y FUNCIONES

# (a) : Creando dos vectores vec1 y vec2 y comprobando 

vec1<-c(2,1,1,3,2,1,0)
vec2<-c(3,8,2,2,0,0,0)

# Apriori
# vec1[1] = 2 + vec2[2] = 8  -> 10  == TRUE 
# vec1[1] = 2 >=2 && vec2[1] = 3 >=2 --> Cumple la condiciÃ³n == TRUE
# vec2-vect1 = (7,-1) < 7 = (FALSE,TRUE) -> evalua con un && == FALSE
# vec2[3] = 2 != na == TRUE

# Verificando

if(vec1[1] + vec2[2]==10){cat("Imprime el resultado!")} # TRUE
if(vec1[1] && vec2[1] >=2){cat("Imprime el resultado!")} # TRUE
if(all((vec2-vec1)[c(2,6)]<7)){cat("Imprime el resultado!")} #FALSE
if(!is.na(vec2[3])){cat("Imprime el resultado!")} #TRUE

# (b) : Creando una función, se multiplican los vectores vec1 y vec2 si su suma es mayor que 3, sino es la suma
respuestaB <- function(A,B){
        i<-0
        for(i in 1:length(A)){
                # Aplicando las condiciones dadas
                if(A[i]+B[i]>3) A[i]=A[i]*B[i]
                else A[i] = A[i]+B[i]
                
                i<-i+1;
        }
        return(A)
}
respuestaB(vec1,vec2)


# (c) : Encontrando si en la comienzo de la diagonal hay una g Minúscula o Mayúscula
# si esto se cumple entonces reemplazar por la cadena AQUI y sino convertir en una matriz identidad

#Creando una función con las condiciones ya mencionadas
evaluar <- function(A){
        #Tomamos el primer caracter de cada string de la matrix con la funciÃ³n substring
        subcad <- substring(A,1,1)
        #Creamos un booleano para ver si ya se encontro al menos un g y sino lo convierte en una matriz identidad
        aux <- TRUE
        for(i in 1:nrow(A)){
                #Recorremos la diagonal 
                if(subcad[i,i]=='G' || subcad[i,i]=='g'){
                        A[i,i]<-"AQUI"
                        aux<-FALSE
                }                      
        }
        if(aux==TRUE){
                A <- diag(1,nrow(A))
        }
        return(A)
}
 
mymat <- matrix(as.character(1:16),4,4)
evaluar(mymat)

mymat <- matrix(c("DANDELION","Hyacinthus","Gerbera","MARIGOLD","geranium",
                  "ligularia","Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3)
evaluar(mymat)

mymat <- matrix(c("GREAT","ejercicioss","agua","hey"),2,2,byrow = T)
evaluar(mymat)



