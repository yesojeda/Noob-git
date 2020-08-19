a<5
b<8
hist(a)
plot(density(a))
for (i in 1:50000) { A[i] <- (i*2)}
head(A)


dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)

# sirve para borrar la memoria del environment
rm(list = ls())