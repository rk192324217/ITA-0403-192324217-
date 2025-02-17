# Write a recursive function that computes the sum of all elements in a list
sum_list <- function(lst) {
  if (length(lst) == 0) {
    return(0)
  }
  return(lst[1] + sum_list(lst[-1]))
}

lst <- as.numeric(strsplit(readline("Enter elements of the list separated by space: "), " ")[[1]])

result <- sum_list(lst)
cat("The sum of the elements in the list is:", result, "\n")
