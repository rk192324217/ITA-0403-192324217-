# Function to get Fibonacci numbers
fibonacci <- function(n) {
  if (n <= 0) return(NULL)
  fib_seq <- numeric(n)
  fib_seq[1] <- 1
  if (n > 1) fib_seq[2] <- 1
  for (i in 3:n) {
    fib_seq[i] <- fib_seq[i-1] + fib_seq[i-2]
  }
  return(fib_seq)
}

# Get the first 10 Fibonacci numbers
fib_10 <- fibonacci(10)

cat("First 10 Fibonacci numbers:", fib_10, "\n")

