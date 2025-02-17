# Define a numeric vector
numbers <- c(1, 2, 3, 4, 5)
sum <- 0

# Loop to sum elements
for (num in numbers) {
  sum <- sum + num
}
print(paste("Sum of elements:", sum))

# Define a list of strings
fruits <- list("Apple", "Banana", "Cherry", "Date")

# Loop to iterate over a list
for (fruit in fruits) {
  print(paste("I like", fruit))
}

# Generate Fibonacci series
fib <- numeric(10)
fib[1] <- 0
fib[2] <- 1

for (i in 3:10) {
  fib[i] <- fib[i-1] + fib[i-2]
}
print("Fibonacci series:")
print(fib)

# Loop through a data frame
data <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                   Score = c(85, 92, 78))

for (i in 1:nrow(data)) {
  print(paste(data$Name[i], "has a score of", data$Score[i]))
}
