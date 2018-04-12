# Nelson Steven Sanabio Maldonado

#Generando y analizando un diagrama de dispersión simple

#Esta función (plot.new()) crea un nuevo marco
#de gráficos. Este es se utiliza en todos los de alto nivel de la
#representación de funciones
plot.new()

#Dibuja en la ventana el dominio de la temperatura y el rango de pressure
#de un data.frame que esta guardado implicitamente en el programa R
plot.window(range(pressure$temperature),range(pressure$pressure))

#Crea el marco (rectangulo centrado) de donde se va a gráficar.
box()

#Crea un patrón en el eje X dependiento del dominio de la temperatura
#el numero 1 viene hacer la parte inferior del box 
axis(1)

#Crea un patrón en el eje Y dependiento del rango del pressure y 
#el numero 2 viene hacer el lado izquierdo del box 
axis(2)

#Crea los puntos de la funcion y los pone visible dentro del marco dibujado
#se le da como argumentos los atributos del data.frame que implicitamente lo
#trabaja con cuadro e incluso lo tabula para graficarlo
points(pressure$temperature,pressure$pressure)

# Pone el nombre que queramos visualizar, side viene hacer en donde quisiera
#poner el nombre , y como mencionamos anteriormente el eje x = 1 y la line viene
# hacer cuantos espacios dejamos despues del contorno del box()
mtext("temperatura",side = 1,line = 3)

# Aca simplemente seria el side = 2 que seria el eje Y 
mtext("presion",side = 2,line = 3)

# Mostramos con esto el titulo del diagrama y font viene hacer la fuente
# osea que tipo de letra quisiera uno usar, por lo general se usa el #2
mtext("Presion de vapor de Mercurio\ncomo una función de la Temperatura",side=3,line = 1,font = 2)
