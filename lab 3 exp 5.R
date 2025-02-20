# Define a constructor function
person <- function(name, age) {
  structure(list(name = name, age = age), class = "person")
}

# Define a print method for the S3 class
print.person <- function(x) {
  cat("Person: ", x$name, "\n")
  cat("Age: ", x$age, "\n")
}

# Create an object of the S3 class
p <- person("John Doe", 30)

p
