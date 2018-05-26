# Nelson Steven Sanabio Maldonado 20152734A
# Respuesta 4 : En este ejercicio usamos FUNCIONES, multiplicación de vectores con condiciones, además usamos listas y como recorrerlas

# Analizando los siguientes códigos

loopvec1 <- 5:7
loopvec2 <- 9:6
mat1 <- matrix(NA, nrow = length(loopvec1), ncol = length(loopvec2))
mat1

# (A) : En la hoja encontramos una función con dos for y pues lo que nos pide es que debemos resolverlo con un for

multi <- function(A,B,mat1){
        i<-1
        for(j in 1:length(B)){
                #Aqui vemos que solo va a recorrer la longitud de B y el i se mantiene fijo 
            mat1[i,j] <- A[i]*B[j]
            mat1[i+1,j] <- A[i+1]*B[j]
            mat1[i+2,j] <- A[i+2]*B[j]
        }
        return(mat1)
}
multi(loopvec1,loopvec2,mat1)

# (B) : Usamos un for para recorrer la cadena1 y asi poder compararlo en la expresiÃ³n del switch

cadena1 <- c("Peter","Homer","Lois","Stewie","Maggie","Bart")

for(i in 1:length(cadena1)){
        palabra <- cadena1[i]
        cat(switch(EXPR=palabra,Homer=2,Marge=34,Bart=56,Lisa=78,Maggie=90,NA)," ")
}
        
# (C) : Creando una función "listando" para las siguientes pruebas que haremos, en lo cual consta de contar cuantas matrices existen

listando <- function(unalista){
        # Creando un contador para las matrices
        cont<-0
        for(i in 1:length(unalista)){
                
                if(is.matrix(unalista[[i]])) cont<-cont+1
                # Si es una lista dentro de la lista padre entonces recorrer la lista y ver si existen matrices
                if(is.list(unalista[[i]])){
                        for(j in 1:length(unalista[[i]])){
                                if(is.matrix(unalista[[i]][[j]])) cont<-cont+1
                        }
                }
                
        }
        return(cont)
}

# Verificando 
unalista <- list(aa=c(3,4,1),bb = matrix(1:4,2,2),
                 cc=matrix(c(T,T,F,T,F,F),3,2),dd="cadena aqui",
                 ee=list(c("hola","tu"),matrix(c("hola","there"))),
                 ff=matrix(c("red","green","blue","yellow")))
# Sale como respuesta 4
listando(unalista)

unalista <- list("salio algo raro",as.vector(matrix(1:6,3,2)))
# Sale como respuesta 0
listando(unalista)

unalista <- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),rbind(1:10,100:91))
# Sale como respuesta 2
listando(unalista)

