# Write a recursive function to print all permutations of a given string
permute <- function(str, step = "") {
  if (nchar(str) == 0) {
    cat(step, "\n")
  } else {
    for (i in 1:nchar(str)) {
      permute(paste0(substr(str, 1, i - 1), substr(str, i + 1, nchar(str))), paste0(step, substr(str, i, i)))
    }
  }
}

str <- readline("Enter a string: ")
permute(str)
