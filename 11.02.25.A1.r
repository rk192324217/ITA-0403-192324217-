# Activity: 11/2/25

par(mfrow=c(3,2))  # Arrange plots in a 3-row, 2-column layout

# 1. Scatter plot of two numerical variables
set.seed(123)  
x <- rnorm(100)
y <- 2*x + rnorm(100)
plot(x, y, main="Scatter Plot", xlab="X Variable", ylab="Y Variable")

# 2. Histogram for 500 randomly generated values from a normal distribution
values <- rnorm(500)
hist(values, main="Histogram of Random Normal Values", xlab="Values", ylab="Frequency")

# 3. Boxplot to compare two groups of data
group1 <- rnorm(50, mean=0, sd=1)
group2 <- rnorm(50, mean=1, sd=1)
boxplot(group1, group2, names=c("Group 1", "Group 2"), main="Boxplot of Two Groups")

# 4. Bar chart for four product sales categories
categories <- c("A", "B", "C", "D")
sales <- c(10, 15, 7, 20)
barplot(sales, names.arg=categories, main="Bar Chart of Product Sales", xlab="Categories", ylab="Sales")

# 5. Line plot to show sales growth over 10 months
months <- 1:10
sales <- c(5, 7, 10, 15, 20, 18, 16, 22, 25, 30)
plot(months, sales, type="o", main="Sales Growth Over 10 Months", xlab="Months", ylab="Sales")

par(mfrow=c(1,1))  # Reset to single-plot layout
