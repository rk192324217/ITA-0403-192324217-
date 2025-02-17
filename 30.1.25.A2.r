create_message <- function(name, age) {
  message <- paste("Hello", name, "you are", age, "years old.")
  result <- list(name = name, age = age, message = message)
  return(result)
}

output <- create_message("John Doe", 30)
print(output)
