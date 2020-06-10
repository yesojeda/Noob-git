start_time <- Sys.time()
for (i in 1:50000) { A[i] <- (i*2)}
head(A)
tail(A)
end_time <- Sys.time()
end_time - start_time

start_time <- Sys.time()
B <- seq(1,1000000, 2)
head (B)
tail (B)
end_time <- Sys.time()
end_time - start_time