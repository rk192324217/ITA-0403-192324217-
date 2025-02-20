factors <- function(n) {
  which(n %% 1:n == 0)
}

n <- as.integer(readline(prompt="Enter a number: "))
cat("Factors of", n, ":", factors(n), "\n")
