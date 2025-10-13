data <- rnorm(20, mean=1, sd=5)  # Generate random data
sample(data, 2)  # Without replacement (i.e. you cannot choose the same sample twice)
sample(data, 11, replace=TRUE)  # With replacement (i.e. you CAN choose the same sample twice)


x <- 1:30
y <- rnorm(30, mean=x)
y2 <- rnorm(30, mean=x, sd=sqrt(x))

plot(x, y)
plot(x, y, type="l")
plot(x, y, pch=4, col="blue")
abline(c(0,1)) # add a straight line (intercept = 0, slope = 1 → line y = x) to the plot.

points(x, y2, col="red")

plot(x, y2, col="red", xlab="my x", ylab="my y", xlim=c(1,10))

