library(reshape2)

data <- data.frame(
  Employee = c('John', 'Jane', 'Sam'),
  HR = c(50000, 60000, 55000),
  Finance = c(70000, 80000, 75000),
  Marketing = c(60000, 65000, 62000)
)

melted_data <- melt(data, id.vars = "Employee",
                    variable.name = "Department",
                    value.name = "Salary")

print(melted_data)
