create_person_info <- function(name, age) {
  list(name = name, age = age, message = paste("Hello,", name, "you are", age, "years old."))
}

name <- "Alice"
age <- 30
person_info <- create_person_info(name, age)
print(person_info)

