# Load iris dataset
data(iris)

# Sample the data
set.seed(123)
train_indices <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_indices, ]
test_data <- iris[-train_indices, ]

# Create logistic regression model
logit_model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = binomial)

# Predict probabilities on test data
pred_probs <- predict(logit_model, test_data, type = "response")

# Create confusion matrix
pred_species <- factor(ifelse(pred_probs > 0.5, "versicolor", "setosa"), levels = levels(iris$Species))
confusion_matrix <- table(test_data$Species, pred_species)
print(confusion_matrix)
