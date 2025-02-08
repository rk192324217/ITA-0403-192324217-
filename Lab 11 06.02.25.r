# 11. Handling Missing Values and Regression Analysis
missing_values <- colSums(is.na(airquality))
thresh <- 0.1 * nrow(airquality)
for (col in names(airquality)) {
  if (missing_values[col] > 0 & missing_values[col] < thresh) {
    airquality <- airquality[!is.na(airquality[[col]]), ]
  } else if (missing_values[col] >= thresh) {
    airquality[[col]][is.na(airquality[[col]])] <- mean(airquality[[col]], na.rm = TRUE)
  }
}

lm_model <- lm(Ozone ~ Solar.R, data = airquality)
plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar Radiation", ylab = "Ozone", main = "Scatter Plot with Regression Line")
abline(lm_model, col = "red")
