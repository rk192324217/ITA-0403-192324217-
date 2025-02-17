create_data_frame <- function(names, ages, genders) {
  data <- data.frame(
    Name = names,
    Age = ages,
    Gender = genders
  )
  return(data)
}

output <- create_data_frame(c("vas", "Raj", "Priya"), c(30, 25, 28), c("Male", "Male", "Female"))
print(output)
