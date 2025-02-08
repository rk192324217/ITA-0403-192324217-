# 8. Create a factor corresponding to height of women dataset
data(women)
height_factor <- cut(women$height, breaks = 5)
print(height_factor)