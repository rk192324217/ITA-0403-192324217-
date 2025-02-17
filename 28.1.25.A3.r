# Activity 3: Assign grades based on scores using ifelse() and if-else statements

scores <- c(95, 82, 67, 45, 89, 73, 50, 91, 30)

grades_ifelse <- ifelse(scores >= 90, "A",
                 ifelse(scores >= 70, "B",
                 ifelse(scores >= 50, "C", "D")))

print(data.frame(Score = scores, Grade = grades_ifelse))

grades_if_else <- c()

for (score in scores) {
  if (score >= 90) {
    grades_if_else <- c(grades_if_else, "A")
  } else if (score >= 70) {
    grades_if_else <- c(grades_if_else, "B")
  } else if (score >= 50) {
    grades_if_else <- c(grades_if_else, "C")
  } else {
    grades_if_else <- c(grades_if_else, "D")
  }
}

print(data.frame(Score = scores, Grade = grades_if_else))
