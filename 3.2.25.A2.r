# Add new rows to an existing data frame
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)

# New data to be added
new_rows <- data.frame(
  name = c('John', 'Alice'),
  score = c(8.5, 7.8),
  attempts = c(2, 1),
  qualify = c('yes', 'no')
)

# Add new rows to the existing data frame
new_exam_data <- rbind(new_exam_data, new_rows)

# Sort data frame by name and score
sorted_data <- new_exam_data[order(new_exam_data$name, new_exam_data$score),]

# Print the final sorted data frame
print(sorted_data)
