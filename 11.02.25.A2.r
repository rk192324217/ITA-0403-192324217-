# Activity2-11/2/25


library(GGally)
library(ggplot2)
library(reshape2)

# 1. Scatterplot Matrix using iris dataset
ggpairs(iris)
Sys.sleep(2)  # Pause for a few seconds to display the plot

# 2. Heatmap for pairwise correlations
cor_matrix <- cor(iris[,1:4])
melted_cor <- melt(cor_matrix)
ggplot(data = melted_cor, aes(x=Var1, y=Var2, fill=value)) +
  geom_tile() +
  scale_fill_gradient2(low="blue", high="red", mid="white", midpoint=0) +
  theme_minimal() +
  labs(title="Heatmap of Pairwise Correlations")
Sys.sleep(2)  

# 3. Basic Q-Q Plot to check normality
data <- rnorm(100)
ggplot(data.frame(sample=data), aes(sample=sample)) +
  stat_qq() +
  stat_qq_line() +
  ggtitle("Q-Q Plot for Normal Distribution")
Sys.sleep(2)  

# 4. Q-Q Plot comparing t-distribution vs normal distribution
t_data <- rt(100, df=5)
ggplot(data.frame(sample=t_data), aes(sample=sample)) +
  stat_qq(distribution = qnorm) +
  stat_qq_line(distribution = qnorm) +
  ggtitle("Q-Q Plot: t-Distribution vs Normal Distribution")
Sys.sleep(2)  

# 5. Cross-Tabulation Table
gender <- c("Male", "Female", "Female", "Male", "Male", "Female", "Female", "Male")
purchase <- c("Yes", "No", "Yes", "No", "Yes", "Yes", "No", "Yes")
print(table(gender, purchase))  # Print the table in the console
