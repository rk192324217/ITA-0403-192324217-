values <- 1:12
dimensions <- c(3, 4, 1)
dim_names <- list(c("R1", "R2", "R3"), c("C1", "C2", "C3", "C4"), "Dim1")

array_3d <- array(values, dim = dimensions, dimnames = dim_names)
array_3d
