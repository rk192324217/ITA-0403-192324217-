  set.seed(123)
sample_letters <- sample(LETTERS, 20, replace = TRUE)
factor_letters <- factor(sample_letters)

levels_sample <- levels(factor_letters)[1:5]
print(levels_sample)
