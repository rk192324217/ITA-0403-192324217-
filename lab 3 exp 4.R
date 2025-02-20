# Create a 3x4 matrix with 12 random numbers between 1-100
set.seed(123) # Set seed for reproducibility
matrix_random <- matrix(sample(1:100, 12), nrow=3, byrow=TRUE)

# Name columns and rows
colnames(matrix_random) <- c("uno", "dos", "tres", "cuatro")
rownames(matrix_random) <- c("x", "y", "z")

# Scale the matrix by 10
matrix_scaled <- matrix_random * 10

matrix_scaled
