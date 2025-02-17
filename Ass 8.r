setClass(
  "Employee",
  slots = list(
    name = "character",
    age = "numeric",
    salary = "numeric"
  )
)
setGeneric(
  "showDetails",
  function(object) {
    standardGeneric("showDetails")
  }
)
setMethod(
  "showDetails",
  "Employee",
  function(object) {
    cat("Employee Details:\n")
    cat("Name: ", object@name, "\n")
    cat("Age: ", object@age, "\n")
    cat("Salary: $", format(object@salary, big.mark = ","), "\n")
  }
)
employee1 <- new("Employee", name = "Alice Johnson", age = 30, salary = 75000)
showDetails(employee1)
