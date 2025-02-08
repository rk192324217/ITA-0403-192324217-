df1 <- data.frame(Name = c("John", "Jane"), Age = c(28, 34))
df2 <- data.frame(Name = c("Alice", "Bob"), Age = c(23, 45))
horizontal_concat <- cbind(df1, df2)
print(horizontal_concat)
