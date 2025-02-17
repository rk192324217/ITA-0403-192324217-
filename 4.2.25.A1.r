# Write R code to vertically and horizontally concatenate two data frames
df1 <- data.frame(Name = c("Alice", "Bob"), Age = c(25, 30))
df2 <- data.frame(Name = c("Charlie", "David"), Age = c(35, 40))

# Vertical concatenation
vertical_concat <- rbind(df1, df2)
cat("Vertical Concatenation:\n")
print(vertical_concat)

# Horizontal concatenation
horizontal_concat <- cbind(df1, df2)
cat("\nHorizontal Concatenation:\n")
print(horizontal_concat)