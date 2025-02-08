first_n_even_numbers <- function(n) {
  even_numbers <- seq(2, by = 2, length.out = n)
  return(even_numbers)
}

n <- 10
result <- first_n_even_numbers(n)
print(result)

