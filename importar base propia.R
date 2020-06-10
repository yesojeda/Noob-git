#COVID 19
# En este ejercicio se busca importar datos de un archivo csv dentro de la propia computadora.

#Para modelar el problema se usa una progresión geométrica

library(readr)
casos_A <- read_delim("C:/Users/YES/Desktop/TP COVID/BD COVID/casos.csv", 
                      ";", escape_double = FALSE, trim_ws = TRUE, 
                      skip = 1)
view(casos_A)
summary(casos_A)
m <- length(casos_A$Casos)
F <- (casos_A$Casos[2:m])/(casos_A$Casos[1:m-1])
mean(F,na.rm = TRUE)
sd(F,na.rm = TRUE)
var(F,na.rm = TRUE)

