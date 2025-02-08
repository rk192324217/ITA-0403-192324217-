df <- data.frame(Name = c("John", "Jane", "Alice", "Bob"), Age = c(28, 17, 23, 15))
df$Status <- ifelse(df$Age >= 18, "Adult", "Minor")
print(df)

