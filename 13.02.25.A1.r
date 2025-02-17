# Activity1: Linear Regression - 13/2/25

# Load dataset
data(mtcars)

# Perform simple linear regression
model <- lm(mpg ~ hp, data=mtcars)

# Display regression summary
summary(model)

# Scatter plot with regression line
plot(mtcars$hp, mtcars$mpg, main="Horsepower vs MPG",
     xlab="Horsepower (hp)", ylab="Miles per Gallon (mpg)", pch=19)
abline(model, col="red", lwd=2)

# Predicted values
mtcars$predicted_mpg <- predict(model)

# Print first few rows of actual vs predicted values
print(head(mtcars[, c("mpg", "predicted_mpg")]))
