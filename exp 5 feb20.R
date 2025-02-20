data(iris)

print(dim(iris))
print(str(iris))
print(summary(iris))
print(sapply(iris[, 1:4], sd))

library(dplyr)
grouped_stats <- iris %>% group_by(Species) %>% summarise(across(starts_with("Sepal"), list(mean = mean, sd = sd), .names = "{col}_{fn}"))
print(grouped_stats)

print(quantile(iris$Sepal.Width))
print(quantile(iris$Sepal.Length))

iris1 <- iris %>%
  mutate(Sepal.Length.Cate = ntile(Sepal.Length, 4))

mean_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(where(is.numeric), mean))
print(mean_values)

print(mean_values)

pivot_table <- table(iris1$Species, iris1$Sepal.Length.Cate)
print(pivot_table)
