na_counts <- colSums(is.na(airquality))
for (col in names(na_counts)) {
  if (na_counts[col] < 0.1 * nrow(airquality)) {
    airquality <- airquality[complete.cases(airquality[, col]), ]
  } else {
    airquality[, col][is.na(airquality[, col])] <- mean(airquality[, col], na.rm = TRUE)
  }
}

linear_model <- lm(Ozone ~ Solar.R, data = airquality)
print(summary(linear_model))

plot(airquality$Solar.R, airquality$Ozone, pch = 19, xlab = "Solar Radiation", ylab = "Ozone")
abline(linear_model, col = "red")
