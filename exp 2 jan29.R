# Create a 3x3 matrix
matrix_A <- matrix(1:9, nrow=3)
matrix_B <- matrix(9:1, nrow=3)

matrix_A
matrix_B
# Addition
matrix_add <- matrix_A + matrix_B

# Subtraction
matrix_sub <- matrix_A - matrix_B

# Multiplication
matrix_mult <- matrix_A %*% matrix_B

matrix_add
matrix_sub
matrix_mult
# Determinant
det_A <- det(matrix_A)

# Check if it is invertible
is_invertible <- ifelse(det_A != 0, TRUE, FALSE)

det_A
is_invertible
# Numeric indexing
element_num <- matrix_A[1, 2]

# Logical indexing
element_log <- matrix_A[matrix_A == 5]

element_num
element_log
