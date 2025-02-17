# Perform various operations on a data frame in R
df <- data.frame(X1 = c(1, 2, 3, 4, 5), X2 = c("Alice", "Bob", "Charlie", "David", "Eve"), X3 = c(25, 30, NA, 17, 45))

# Rename columns
colnames(df) <- c("ID", "Name", "Age")

# Replace missing Age values with the mean of the Age column
mean_age <- mean(df$Age, na.rm = TRUE)
df$Age[is.na(df$Age)] <- mean_age

# Sort data frame by Age in descending order
df <- df[order(-df$Age), ]

# Remove ID column
df <- df[, -1]

# Subset data to include only rows where Age >= 40
df <- subset(df, Age >= 40)

# Display final data frame
cat("Final Processed Data Frame:\n")
print(df)
