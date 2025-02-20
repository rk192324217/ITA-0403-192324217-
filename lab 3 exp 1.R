# Create two matrices
matrix1 <- matrix(1:6, nrow=2)
matrix2 <- matrix(7:12, nrow=2)

# Combine matrices column-wise using cbind()
combined_cbind <- cbind(matrix1, matrix2)

# Combine matrices row-wise using rbind()
combined_rbind <- rbind(matrix1, matrix2)

combined_cbind
combined_rbind
