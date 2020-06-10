A<-20
library(tictoc)

tic("sleeping")
print("dormir siesta")
Sys.sleep(2)
print("....suena el despertador")
toc()

#Código para sys.sleep Verificad
sleep_for_a_minute <- function() { Sys.sleep(14) }
start_time <- Sys.time()
sleep_for_a_minute()
end_time <- Sys.time()
end_time - start_time
'Resultado que me dio es...'
print(end_time- start_time)

