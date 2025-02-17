# Write a recursive function to count how many times a specific element appears in a list
count_occurrence <- function(lst, target) {
  if (length(lst) == 0) {
    return(0)
  }
  return(as.numeric(lst[1] == target) + count_occurrence(lst[-1], target))
}

lst <- as.numeric(strsplit(readline("Enter elements of the list separated by space: "), " ")[[1]])
target <- as.numeric(readline("Enter the target element: "))

result <- count_occurrence(lst, target)
cat("The number of occurrences of", target, "is:", result, "\n")
