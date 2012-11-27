# Привет мир, будем пробовать...
print("HelloWorld")

# Generate random number with point 14 digits after ,
# 2-size of array; 1,10-range
x <- runif(1,1,10)
print(x)

# Generate whole number
# 1:10-range; 10-size of array; replace-repeats are allowed
x <- sample(1:10, 10, replace = TRUE)
print(x)


#Experiment with real think
price_delta <- sample(-50:50, 100, replace = TRUE)
price <- 1000

# outputbuf <- vector()
outputbuf <- price
for (delta in price_delta) {
  outputbuf <- c(outputbuf,  tail(outputbuf, n=1)+delta)
}

plot(outputbuf, type="l")