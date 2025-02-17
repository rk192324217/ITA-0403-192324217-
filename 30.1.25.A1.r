# Activity 1: Create a function that takes a 
# number n as input and returns a vector 
# containing the first n even numbers

even_numbers <- function(n) {
  return(seq(2, by = 2, length.out = n))
}

n <- as.numeric(readline("Enter a number: "))
print(even_numbers(n))
