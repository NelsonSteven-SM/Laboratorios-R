# Nelson Sanabio Maldonado 20152734A

#Respuesta 2: Determinando que estilos de argumentos estamos usando
# EXACTO -> Cuando los atributos son mostrados explicitamente
# PARCIAL -> Cuando los atributos son de forma abreviada 
# POSICIONAL -> Cuando no es necesario usar argumentos exactos ni parcial. 
# MIXTO -> Cuando es una combinación del uso de las anteriores definiciones
# Si es MIXTO -> identifica qué argumentos se especifican en cada estilo.

#Vemos que estamos haciendo usos de atributos explicitos -> EXACTOS
seq(from=10, to=8, length=5)
sort(decreasing=T, x=c(2,1,1,2,0.3,3,1.3))

# Usamos abreviatura, como el a = arr.ind -> PARCIAL
which(matrix(c(T,F,T,T),2,2), a=T) # a = arr.ind

# Notamos que no hay atributos explicitos ni abreviaturas -> POSICIONAL
rep(1:2, 3)
which(matrix(c(T,F,T,T), 2, 2))

# Por último, vemos que hace uso de argumentos exactos y abreviatura, dim=dimensión
array(8:1, dim=c(2,2,2)) 
