# Activity2: Multiple Regression - 13/2/25

# Load dataset
data(mtcars)

# Fit the multiple regression model
model <- lm(mpg ~ hp + wt + cyl, data=mtcars)

# Display regression summary
summary(model)

# Predict mpg for a new car with given values
new_car <- data.frame(hp=120, wt=2.5, cyl=6)
predicted_mpg <- predict(model, newdata=new_car)

# Print predicted mpg
print(paste("Predicted mpg for hp=120, wt=2.5, cyl=6:", round(predicted_mpg, 2)))
