# Write R code to add a Status column based on Age
df <- data.frame(Name = c("Alice", "Bob", "Charlie", "David"), Age = c(25, 30, 15, 17)) # nolint

df$Status <- ifelse(df$Age >= 18, "Adult", "Minor")

cat("Updated Data Frame:\n")
print(df)
