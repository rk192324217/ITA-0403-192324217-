sieve <- function(n) {
  primes <- rep(TRUE, n)
  primes[1] <- FALSE
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      primes[seq(i^2, n, i)] <- FALSE
    }
  }
  which(primes)
}

n <- as.integer(readline(prompt="Enter a number: "))
cat("Prime numbers up to", n, ":", sieve(n), "\n")
9
