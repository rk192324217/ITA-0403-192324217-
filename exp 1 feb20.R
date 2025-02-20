vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

array_2x3x3 <- array(c(vector1, vector2), dim = c(3, 3, 2))

print(array_2x3x3[2, , 2])

print(array_2x3x3[3, 3, 1])
