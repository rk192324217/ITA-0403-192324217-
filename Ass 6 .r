
matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = 2, byrow = TRUE)

matrix_addition <- matrix1 + matrix2
print("Matrix Addition:")
print(matrix_addition)

matrix_multiplication <- matrix1 %*% matrix2
print("Matrix Multiplication:")
print(matrix_multiplication)

matrix_transpose <- t(matrix1)
print("Transpose of Matrix 1:")
print(matrix_transpose)
