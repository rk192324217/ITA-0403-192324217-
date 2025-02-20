data(USArrests)

print(str(USArrests))
print(summary(USArrests))

print(row.names(USArrests)[which.max(USArrests$Rape)])

print(row.names(USArrests)[which.max(USArrests$Murder)])
print(row.names(USArrests)[which.min(USArrests$Murder)])

print(cor(USArrests))

median_assault <- median(USArrests$Assault)
print(row.names(USArrests)[USArrests$Assault > median_assault])

q1_murder <- quantile(USArrests$Murder, 0.25)
print(row.names(USArrests)[USArrests$Murder <= q1_murder])

hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrest Rate")
plot(density(USArrests$Murder), main = "Density Plot of Murder Arrests", xlab = "Murder Arrest Rate")

library(ggplot2)
ggplot(USArrests, aes(x = UrbanPop, y = Murder)) +
  geom_point(aes(color = Assault)) +
  scale_color_gradient(low = "blue", high = "red") +
  labs(title = "Murder Arrest Rate vs. Urban Population", x = "Urban Population (%)", y = "Murder Arrest Rate")

barplot(USArrests$Murder, names.arg = row.names(USArrests), las = 2, col = "blue", main = "Murder Arrests by State", ylab = "Murder Arrest Rate")
