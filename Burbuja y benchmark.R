x<-sample(1:20000,10)
plot(x)
burbuja <- function(x){
  n<-length(x)
  for(j in 1:(n-1)){
    for(i in 1:(n-j)){
      if(x[i]>x[i+1]){
        temp<-x[i]
        x[i]<-x[i+1]
        x[i+1]<-temp
      }
    }
  }
  return(x)
}

#Muestra obtenida
resBurbuja<-burbuja(x)
#Muestra obtenida

#Muestra Ordenada
x<-sample(1:20000,10)
sort(x)
respSort<-sort(x)


#microbenchmark(sort(x))
#microbenchmark(burbuja(x))

microbenchmark(
  sort(x),
  burbuja(x)
  )

#Entonces se puede ver que el comando "burbuja" es m�s r�pido
#que el sort

#Comparaci�n de uso de recursos entre burbuja y sort

mbm1<-microbenchmark(
  resBurbuja,respSort)
mbm1

#Mostrar resultado de mbm
autoplot(mbm1)

# Se debe se�alar que el resultado var�a todas las veces que se
#realiza, ya que depende de si hay otras ventanas abiertas y de
#la capacidad del procesador y la memoria que se posea la m�quina.

# Si se compara sort respecto de burbuja, se obtiene

mbm2<-microbenchmark(
  respSort,
  resBurbuja)
mbm2

#Mostrar resultado de mbm
autoplot(mbm2)

