# Part (a): Fit a Poisson regression model

# Load the dataset
data(warpbreaks)

# Inspect the dataset
str(warpbreaks)
summary(warpbreaks)

# Fit the Poisson regression model
poisson_model <- glm(breaks ~ wool + tension, 
                      data = warpbreaks, 
                      family = poisson)

# Summary of the model
summary(poisson_model)

# Exponentiate coefficients to interpret multiplicative effects
exp(coef(poisson_model))

# Part (b): Predict the expected number of breaks for a new observation

# Create a new observation
new_observation <- data.frame(wool = "A", tension = "M")

# Predict the expected number of breaks
predicted_breaks <- predict(poisson_model, newdata = new_observation, type = "response")

# Print the predicted value
print(paste("Predicted number of breaks:", predicted_breaks))