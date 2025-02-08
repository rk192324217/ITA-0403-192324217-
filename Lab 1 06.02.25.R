values <- c(1, 2, 3, 4, 5, 6)

dims <- c(2, 3)

dimnames <- list(
  c("Row1", "Row2"),
  c("Col1", "Col2", "Col3") 
)

array1 <- array(values, dim = dims, dimnames = dimnames)

print(array1)
