df <- data.frame(x = 1:3, y = 4:6, z = 7:9)

matrix_from_df <- as.matrix(df)

matrix_from_df
transpose_matrix <- function(mat) {
  t(mat)
}

# Transpose the matrix
matrix_transposed <- transpose_matrix(matrix_from_df)
matrix_transposed
