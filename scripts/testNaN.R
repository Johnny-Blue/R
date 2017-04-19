a1 <- c(0.1, 0.2)
a2 <- c(NaN, 0.3)
rowSums(cbind(a1,a2), na.rm = TRUE)

