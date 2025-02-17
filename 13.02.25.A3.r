# Load the necessary library
library(dplyr)

# Load the iris dataset
data(iris)

# Create a binary outcome variable
iris <- iris %>%
  mutate(Species_binary = ifelse(Species == "setosa", 1, 0))

# Fit the logistic regression model
logistic_model <- glm(Species_binary ~ Sepal.Length + Petal.Length, 
                      data = iris, 
                      family = binomial)

# Summary of the model
summary(logistic_model)

# Predict probabilities
iris$predicted_prob <- predict(logistic_model, type = "response")

# Convert probabilities to binary predictions (0 or 1)
iris$predicted_class <- ifelse(iris$predicted_prob > 0.5, 1, 0)

# View the first few rows of the dataset with predictions
head(iris)

# Confusion matrix
table(Predicted = iris$predicted_class, Actual = iris$Species_binary)

# Accuracy
accuracy <- mean(iris$predicted_class == iris$Species_binary)
print(paste("Accuracy:", accuracy))