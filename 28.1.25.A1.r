# Activity 1: Checking if elements in a vector are even or odd using ifelse() function

numbers <- c(10, 15, 22, 33, 40, 55, 60)
result <- ifelse(numbers %% 2 == 0, "Even", "Odd")
print(data.frame(Number = numbers, Type = result))
