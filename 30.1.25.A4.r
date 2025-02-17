student_performance <- function(name, scores, threshold) {
  avg_score <- mean(scores)
  status <- ifelse(avg_score >= threshold, "Pass", "Fail")
  report <- list(
    name = name,
    average_score = avg_score,
    status = status
  )
  return(report)
}

output <- student_performance("Johndoe ", c(75, 80, 90, 85), 70)
print(output)
